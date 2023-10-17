package viamboat

import (
	"fmt"
	"time"

	"go.viam.com/rdk/data"
	"go.viam.com/rdk/resource"
)

var family = resource.ModelNamespace("viam-labs").WithFamily("viamboat")

func tooOld(extra map[string]interface{}, lastUpdate time.Time) error {
	if time.Since(lastUpdate) < time.Minute {
		return nil
	}

	if extra != nil && extra[data.FromDMString] == true {
		// we're from data capture
		// since data is too old, just don't store anything or log
		return data.ErrNoCaptureToStore
	}

	return fmt.Errorf("lastUpdate update too old: %v (%v)", lastUpdate, extra)
}
