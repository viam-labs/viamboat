package viamboat

import (
	"fmt"
	"sync"

	"go.viam.com/rdk/logging"
)

var GlobalReaderRegistry *readerRegistry = &readerRegistry{readers: map[string]Reader{}}

type readerRegistry struct {
	readers map[string]Reader
	mu      sync.Mutex
}

func (rr *readerRegistry) Add(name string, r Reader) error {
	rr.mu.Lock()
	defer rr.mu.Unlock()

	_, got := rr.readers[name]
	if got {
		return fmt.Errorf("cannot add duplicate readers with name [%s]", name)
	}

	rr.readers[name] = r
	return nil
}

func (rr *readerRegistry) GetOrCreate(src string, logger logging.Logger) (Reader, error) {
	rr.mu.Lock()
	defer rr.mu.Unlock()

	r, got := rr.readers[src]
	if !got {
		if src == "" {
			return nil, fmt.Errorf("tried to reader with blank name")
		}
		r = CreateReader(src, logger)
		rr.readers[src] = r
		r.Start()
	}
	return r, nil
}
