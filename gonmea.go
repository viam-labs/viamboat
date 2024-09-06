//go:build linux

package viamboat

import (
	"fmt"
	"os/exec"
	"sync"
	"sync/atomic"
	"time"

	"go.viam.com/rdk/logging"

	"github.com/erh/gonmea/analyzer"
	"github.com/erh/gonmea/common"

	"github.com/go-daq/canbus"
)

func init() {
	canCreator = NewGoReader
}

type goReader struct {
	canInterface string
	logger       logging.Logger

	closed    atomic.Bool
	started   atomic.Bool
	waitGroup sync.WaitGroup

	triedLinkUp bool

	callbacks *callbackManager

	toSend chan []canbus.Frame
}

func NewGoReader(canInterface string, logger logging.Logger) Reader {
	return &goReader{
		canInterface: canInterface,
		logger:       logger,
		callbacks:    &callbackManager{},
		toSend:       make(chan []canbus.Frame),
	}
}

func (r *goReader) AddCallback(pgn int, cb ReaderCallback) {
	r.callbacks.addCallback(pgn, cb)
}

func (r *goReader) Close() error {
	r.closed.Store(true)

	if r.started.Load() {
		r.waitGroup.Wait()
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

func (r *goReader) connectIfNeeded(sck *canbus.Socket) (*canbus.Socket, error) {
	if sck != nil {
		return sck, nil
	}

	sck, err := canbus.New()
	if err != nil {
		return nil, err
	}

	err = sck.Bind(r.canInterface)
	if err == nil {
		return sck, nil
	}

	// error case
	sck.Close()

	if !r.triedLinkUp {
		r.triedLinkUp = true
		r.logger.Warnf("trying ip link command")
		err := r.tryIpLink()
		if err != nil {
			r.logger.Warnf("ip link commmand failed %s", err)
		}

	}

	return nil, err
}

func (r *goReader) run(ana analyzer.Analyzer) {
	swapped := r.started.CompareAndSwap(false, true)
	if !swapped {
		return
	}

	r.waitGroup.Add(2)
	go func() {
		defer r.waitGroup.Done()

		var sck *canbus.Socket
		var err error

		for !r.closed.Load() {

			sck, err = r.connectIfNeeded(sck)
			if err != nil {
				r.logger.Errorf("error connecting to canbus %v", err)
				time.Sleep(10 * time.Second)
				continue
			}

			msg, err := sck.Recv()
			if err != nil {
				sck.Close()
				sck = nil
				r.logger.Errorf("error reading from canbus %v", err)
				time.Sleep(10 * time.Second)
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

	}()

	go func() {
		defer r.waitGroup.Done()

		var sck *canbus.Socket
		var err error

		for !r.closed.Load() {
			sck, err = r.connectIfNeeded(sck)
			if err != nil {
				r.logger.Errorf("error connecting to canbus %v", err)
				time.Sleep(10 * time.Second)
				continue
			}

			ff := <-r.toSend
			for _, f := range ff {
				_, err := sck.Send(f)
				if err != nil {
					r.logger.Errorf("error sending message: %s", err)
				}
			}
		}

		if sck != nil {
			sck.Close()
		}

	}()

}

func (r *goReader) tryIpLink() error {
	cmd := fmt.Sprintf("/sbin/ip link set %s up type can bitrate 250000", r.canInterface)
	c := exec.Command("bash", "-c", cmd)

	out, err := c.CombinedOutput()
	r.logger.Infof("outout: %s", out)
	return err
}

func frameToRawMessage(f canbus.Frame) common.RawMessage {
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

	return rm
}

func (r *goReader) processMessage(ana analyzer.Analyzer, f canbus.Frame) error {
	rm := frameToRawMessage(f)

	msg, hasMsg, err := ana.ConvertRawMessage(&rm)
	if err != nil {
		return fmt.Errorf("Error converting raw message: %w", err)
	}

	if !hasMsg {
		return nil
	}

	m := commonToMe(msg)

	all := r.callbacks.getCallbacks(m.Pgn)

	for _, c := range all {
		err := c(m)
		if err != nil {
			r.logger.Infof("error processing message %s", err)
		}
	}

	return nil

}

func (r *goReader) Send(msg CANMessage) error {
	ff, err := Convert(msg)
	if err != nil {
		return err
	}

	r.toSend <- ff

	return nil
}

func Convert(m CANMessage) ([]canbus.Frame, error) {
	msg := common.Message{
		Priority: m.Priority,
		Src:      m.Src,
		Dst:      m.Dst,
		PGN:      m.Pgn,
		Fields:   m.Fields,
		Sequence: m.Sequence,
	}

	raw, err := analyzer.MarshalMessageToSingleOrFastRaw(&msg)
	if err != nil {
		return nil, err
	}

	frames := []canbus.Frame{}
	for _, r := range raw {
		frames = append(frames, rawToFrame(r))
	}

	return frames, nil
}

func rawToFrame(msg *common.RawMessage) canbus.Frame {
	return canbus.Frame{
		ID:   uint32(common.GetCanIDFromISO11783Bits(msg.Prio, msg.PGN, msg.Src, msg.Dst)),
		Data: msg.Data,
		Kind: canbus.EFF, // TODO: should this sometimes be different
	}
}
