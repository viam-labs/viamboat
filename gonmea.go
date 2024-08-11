//go:build linux

package viamboat

import (
	"fmt"
	"sync/atomic"
	"time"

	"go.viam.com/rdk/logging"

	"github.com/erh/gonmea/analyzer"
	"github.com/erh/gonmea/common"

	"github.com/go-daq/canbus"
)

func init() {
	if true {
		canCreator = NewGoReader
	}
}

type goReader struct {
	canInterface string
	logger       logging.Logger

	closed  atomic.Bool
	started atomic.Bool
	stopped atomic.Bool

	callbacks *callbackManager
}

func NewGoReader(canInterface string, logger logging.Logger) Reader {
	return &goReader{
		canInterface: canInterface,
		logger:       logger,
		callbacks:    &callbackManager{},
	}
}

func (r *goReader) AddCallback(pgn int, cb ReaderCallback) {
	r.callbacks.addCallback(pgn, cb)
}

func (r *goReader) Close() error {
	r.closed.Store(true)

	if r.started.Load() {
		for i := 0; i < 1000; i++ {
			if r.stopped.Load() {
				break
			}
			time.Sleep(1 * time.Millisecond)
		}
		if !r.stopped.Load() {
			return fmt.Errorf("couldn't stop thread")
		}
	}

	return nil
}

func (r *goReader) Start() error {
	ana, err := analyzer.NewAnalyzer(analyzer.NewConfig(r.logger))
	if err != nil {
		return err
	}

	go r.run(ana)

	return nil
}

func (r *goReader) run(ana analyzer.Analyzer) {
	swapped := r.started.CompareAndSwap(false, true)
	if !swapped {
		return
	}

	var sck *canbus.Socket
	var err error

	for !r.closed.Load() {

		if sck == nil {
			sck, err = canbus.New()
			if err != nil {
				r.logger.Errorf("error connecting to canbus %v", err)
				time.Sleep(time.Minute)
				continue
			}

			err = sck.Bind("can0")
			if err != nil {
				sck.Close()
				sck = nil
				r.logger.Errorf("error connecting to canbus %v", err)
				time.Sleep(time.Minute)
				continue
			}
		}

		msg, err := sck.Recv()
		if err != nil {
			sck.Close()
			sck = nil
			r.logger.Errorf("error reading from canbus %v", err)
			time.Sleep(time.Minute)
			continue
		}

		err = r.processMessage(ana, msg)
		if err != nil {
			r.logger.Errorf("error parsing canbus: %s", err)
		}
	}
	if sck != nil {
		sck.Close()
	}
	r.stopped.Store(true)
}

func (r *goReader) processMessage(ana analyzer.Analyzer, f canbus.Frame) error {
	prio, pgn, src, dst := common.GetISO11783BitsFromCanID(uint(f.ID))

	rm := common.RawMessage{
		Timestamp: time.Now(),
		Prio:      prio,
		PGN:       pgn,
		Dst:       dst,
		Src:       src,
		Len:       uint8(len(f.Data)),
		Data:      f.Data,
	}

	msg, hasMsg, err := ana.ConvertRawMessage(&rm)
	if err != nil {
		return fmt.Errorf("Error converting raw message: %w", err)
	}

	if !hasMsg {
		return nil
	}

	m := CANMessage{
		Timestamp:   CANTimeFormat(msg.Timestamp),
		Priority:    msg.Priority,
		Src:         msg.Src,
		Dst:         msg.Dst,
		Pgn:         msg.PGN,
		Description: msg.Description,
		Fields:      msg.Fields,
		Created:     time.Now(),
	}

	all := r.callbacks.getCallbacks(m.Pgn)

	for _, c := range all {
		err := c(m)
		if err != nil {
			r.logger.Infof("error processing message %s", err)
		}
	}

	return nil

}
