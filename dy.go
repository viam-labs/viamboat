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

	closed  atomic.Bool
	started atomic.Bool
	stopped atomic.Bool

	logger    logging.Logger
	parser    analyzer.Analyzer
	callbacks *callbackManager
}

func (r *dyReaer) connect() (io.ReadCloser, error) {
	conn, err := net.DialTimeout("tcp", r.addr, 5*time.Second)
	if err != nil {
		return nil, err
	}
	return conn, nil
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

	const defaultBackoff = 2 * time.Second
	backoff := defaultBackoff

	var err error
	var conn io.ReadCloser
	var in *bufio.Reader

	for !r.closed.Load() {
		if conn == nil {
			conn, err = r.connect()
			if err != nil {
				r.logger.Infof("cannot reconnect: %v", err)
				time.Sleep(backoff)
				if backoff < time.Minute {
					backoff *= 2
				}
				continue
			}
			backoff = defaultBackoff
		}

		if in == nil {
			in = bufio.NewReader(conn)
		}

		s, err := in.ReadString('\n')
		if err != nil {
			r.logger.Warnf("error reading %v", err)
			in = nil
			conn = nil
			continue
		}
		s = strings.TrimSpace(s)
		if len(s) == 0 {
			continue
		}

		msg, finished, err := r.parser.ProcessMessage([]byte(s))
		if err != nil {
			r.logger.Warnf("got error parsing line (%s) %v", s, err)
			continue
		}
		if !finished {
			r.logger.Warnf("got partial result, confused - parsing line (%s) %v", s, err)
			continue
		}
		if msg == nil {
			continue
		}

		r.processMessage(msg)
	}

	if conn != nil {
		conn.Close()
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

func (r *dyReaer) Send(msg CANMessage) error {
	return SendNotImplemented
}

func commonToMe(msg *common.Message) CANMessage {
	return CANMessage{
		Timestamp:   CANTimeFormat(msg.Timestamp),
		Priority:    msg.Priority,
		Src:         msg.Src,
		Dst:         msg.Dst,
		Pgn:         msg.PGN,
		Description: msg.Description,
		Fields:      msg.Fields,
		Created:     time.Now(),
		Sequence:    msg.Sequence,
	}
}

func (r *dyReaer) processMessage(msg *common.Message) {
	m := commonToMe(msg)

	all := r.callbacks.getCallbacks(m.Pgn)

	for _, c := range all {
		err := c(m)
		if err != nil {
			r.logger.Infof("error processing message %s", err)
		}
	}

}
