package viamboat

import (
	"bufio"
	"context"
	"encoding/json"
	"errors"
	"io"
	"os"
	"strings"
	"sync"
	"time"

	"github.com/edaniels/golog"
)

type ReaderCallback func(data CANMessage) error
type JSONStreamCreator func() (io.ReadCloser, error)

type Reader interface {
	AddCallback(pgn int, cb ReaderCallback)
	Start()
	Close() error
}

type jsonReader struct {
	creator JSONStreamCreator
	cancel  context.CancelFunc

	logger golog.Logger

	callbacksLock sync.Mutex
	callbacks     map[int][]ReaderCallback

	seenErrors map[string]time.Time
}

func NewJSONReader(creator JSONStreamCreator, logger golog.Logger) Reader {
	return &jsonReader{creator: creator, logger: logger, seenErrors: map[string]time.Time{}}
}

func (r *jsonReader) AddCallback(pgn int, cb ReaderCallback) {
	r.callbacksLock.Lock()
	defer r.callbacksLock.Unlock()

	if r.callbacks == nil {
		r.callbacks = map[int][]ReaderCallback{}
	}

	r.callbacks[pgn] = append(r.callbacks[pgn], cb)
}

func (r *jsonReader) Start() {
	if r.cancel != nil {
		panic("already started!")
	}

	ctx, cancel := context.WithCancel(context.Background())
	r.cancel = cancel

	go func() {
		var err error
		var raw io.ReadCloser
		var in *bufio.Reader
		defer func() {
			if raw != nil {
				raw.Close()
			}
		}()
		for {
			if raw == nil {
				raw, err = r.creator()
				if err != nil {
					raw = nil
					r.logger.Warnf("cannot start listening: %s", err.Error())
					time.Sleep(time.Second * 5)
					continue
				}
				in = bufio.NewReader(raw)
			}

			err = r.processOneLine(in)
			if err != nil {
				r.logger.Warnf("error processing line: %s", err.Error())
				raw.Close()
				raw = nil
				in = nil
				time.Sleep(time.Second * 1)
			}

			if ctx.Err() != nil {
				break
			}
		}
	}()
}

func (r *jsonReader) Close() error {
	if r.cancel != nil {
		r.cancel()
	}
	return nil
}

func unmarshalLine(s string) (CANMessage, error) {
	l := CANMessage{}
	err := json.Unmarshal([]byte(s), &l)
	return l, err
}

func (r *jsonReader) handleErrorLine(s string) {

	if strings.HasPrefix(s, "ERROR ") {
		// ERROR 2022-08-19T12:09:11.972Z [analyzer] PGN 65292 field Manufacturer Code error
		pcs := strings.Split(s, "[analyzer]")
		if len(pcs) == 2 {
			if time.Since(r.seenErrors[pcs[1]]) < time.Minute {
				return
			}
			r.seenErrors[pcs[1]] = time.Now()
		}
	}
	r.logger.Warnf("invalid output: %s", s)

}

func (r *jsonReader) processOneLine(in *bufio.Reader) error {
	s, err := in.ReadString('\n')
	if err != nil {
		return err
	}

	s = strings.TrimSpace(s)
	if len(s) == 0 {
		return nil
	}

	if s[0] != '{' {
		r.handleErrorLine(s)
		return nil
	}

	l, err := unmarshalLine(s)
	if err != nil {
		return err
	}

	r.callbacksLock.Lock()
	defer r.callbacksLock.Unlock()

	all := r.callbacks[l.Pgn]
	for _, c := range all {
		c(l)
	}

	all = r.callbacks[-1]
	for _, c := range all {
		c(l)
	}

	return nil
}

func StaticFileJSONStreamCreator(filename string, onlyOnce bool) JSONStreamCreator {
	opened := false
	return func() (io.ReadCloser, error) {
		if opened && onlyOnce {
			return nil, errors.New("go away")
		}
		opened = true
		return os.Open(filename)
	}
}
