//go:build linux

package viamboat

import (
	"fmt"
	"os/exec"
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

	closed  atomic.Bool
	started atomic.Bool
	stopped atomic.Bool

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

	triedLinkUp := false

	for !r.closed.Load() {

		if sck == nil {
			sck, err = canbus.New()
			if err != nil {
				r.logger.Errorf("error connecting to canbus %v", err)
				time.Sleep(time.Minute)
				continue
			}

			err = sck.Bind(r.canInterface)
			if err != nil {
				sck.Close()
				sck = nil
				r.logger.Errorf("error connecting to canbus %v", err)
				if triedLinkUp {
					time.Sleep(time.Minute)
				} else {
					triedLinkUp = true
					r.logger.Warnf("trying ip link command")
					err := r.tryIpLink()
					if err != nil {
						r.logger.Warnf("ip link commmand failed %s", err)
					}

				}
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

		select {
		case ff, ok := <-r.toSend:
			if ok {
				fmt.Printf("going to send %v\n", ff)
				for _, f := range ff {
					_, err := sck.Send(f)
					if err != nil {
						r.logger.Errorf("error sending message: %s", err)
					}
				}
				fmt.Printf("sent\n")
			}
		default:
			continue
		}
	}

	if sck != nil {
		sck.Close()
	}
	r.stopped.Store(true)
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
