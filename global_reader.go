package viamboat

import (
	"fmt"
	"sync"
)

var GlobalReaderRegistry *readerRegistry = &readerRegistry{readers: map[string]Reader{}}

type readerRegistry struct {
	readers map[string]Reader
	mu      sync.Mutex
}

func (rr *readerRegistry) Add(name string, r Reader) error {
	name = fixName(name)
	rr.mu.Lock()
	defer rr.mu.Unlock()

	_, got := rr.readers[name]
	if got {
		return fmt.Errorf("cannot add duplicate readers with name [%s]", name)
	}

	rr.readers[name] = r
	return nil
}

func (rr *readerRegistry) Reader(name string) (Reader, error) {
	name = fixName(name)
	rr.mu.Lock()
	defer rr.mu.Unlock()

	r, got := rr.readers[name]
	if !got {
		return nil, fmt.Errorf("no reader with name [%s]", name)
	}
	return r, nil
}

func fixName(n string) string {
	if n == "" {
		return "default"
	}
	return n
}
