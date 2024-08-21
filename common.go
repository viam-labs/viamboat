package viamboat

import (
	"fmt"
	"time"

	"go.viam.com/rdk/data"
	"go.viam.com/rdk/resource"
)

var family = resource.ModelNamespace("viam-labs").WithFamily("viamboat")

func isFromDataCapture(extra map[string]interface{}) bool {
	if extra == nil {
		return false
	}

	return extra[data.FromDMString] == true
}

func tooOld(extra map[string]interface{}, lastUpdate time.Time) error {
	if time.Since(lastUpdate) < time.Minute {
		return nil
	}

	if isFromDataCapture(extra) {
		// we're from data capture
		// since data is too old, just don't store anything or log
		return data.ErrNoCaptureToStore
	}

	return fmt.Errorf("lastUpdate update too old: %v (%v)", lastUpdate, extra)
}

func fixTypeHack(v interface{}) interface{} {
	dur, ok := v.(time.Duration)
	if ok {
		return fmt.Sprintf("%v", dur)
	}

	ct, ok := v.(CANTimeFormat)
	if ok {
		return fmt.Sprintf("%s", ct.String())
	}

	t, ok := v.(time.Time)
	if ok {
		return fmt.Sprintf("%s", t.Format(time.RFC822Z))
	}

	return v
}

func fixTypeMapHack(m map[string]interface{}) map[string]interface{} {
	m2 := map[string]interface{}{}
	for k, v := range m {
		m2[k] = fixTypeHack(v)
	}
	return m2
}
