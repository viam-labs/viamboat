package viamboat

import (
	"bufio"
	"fmt"
	"io"
	"net"
	"strings"
	"sync/atomic"
	"time"

	"go.viam.com/rdk/logging"

	"github.com/erh/gonmea/analyzer"
	"github.com/erh/gonmea/common"
)

func fixAddress(addr string) string {
	if strings.Index(addr, ":") >= 0 {
		return addr
	}
	return addr + ":2000"
}

func NewDigitalYachtReader(addr string, logger logging.Logger) Reader {

	parser, err := analyzer.NewAnalyzer(analyzer.NewConfig(logger))
	if err != nil {
		panic(err)
	}

	r := &dyReaer{
		addr:      fixAddress(addr),
		logger:    logger,
		parser:    parser,
		callbacks: &callbackManager{},
	}

	return r
}

type dyReaer struct {
	addr string
	conn io.ReadCloser

	closed  atomic.Bool
	started atomic.Bool
	stopped atomic.Bool

	logger    logging.Logger
	parser    analyzer.Analyzer
	callbacks *callbackManager
}

func (r *dyReaer) connect() error {
	conn, err := net.Dial("tcp", r.addr)
	if err != nil {
		return err
	}
	r.conn = conn
	return nil
}

func (r *dyReaer) AddCallback(pgn int, cb ReaderCallback) {
	r.callbacks.addCallback(pgn, cb)
}

func (r *dyReaer) Start() error {
	go r.run()
	return nil
}

func (r *dyReaer) run() {
	swapped := r.started.CompareAndSwap(false, true)
	if !swapped {
		return
	}

	var in *bufio.Reader

	for !r.closed.Load() {
		if r.conn == nil {
			err := r.connect()
			if err != nil {
				r.logger.Infof("cannot reconnect: %v", err)
				time.Sleep(time.Second * 10)
				continue
			}
		}

		if in == nil {
			in = bufio.NewReader(r.conn)
		}

		s, err := in.ReadString('\n')
		if err != nil {
			r.logger.Warnf("error reading %v", err)
			in = nil
			r.conn = nil
			continue
		}
		s = strings.TrimSpace(s)
		if len(s) == 0 {
			continue
		}

		msg, finished, err := r.parser.ProcessMessage([]byte(s))
		if err != nil {
			r.logger.Warn("got error parsing line (%s) %v", s, err)
			continue
		}
		if !finished {
			r.logger.Warn("got partial result, confused - parsing line (%s) %v", s, err)
			continue
		}
		if msg == nil {
			continue
		}

		r.processMessage(msg)
	}

	if r.conn != nil {
		r.conn.Close()
	}

	r.stopped.Store(true)
}

func (r *dyReaer) Close() error {
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

func (r *dyReaer) processMessage(msg *common.Message) {
	m := CANMessage{
		Timestamp:   CANTimeFormat(msg.Timestamp),
		Priority:    msg.Priority,
		Src:         msg.Src,
		Dst:         msg.Dst,
		Pgn:         msg.Pgn,
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

}
