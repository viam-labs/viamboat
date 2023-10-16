package viamboat

import (
	"context"
	"fmt"
	"time"

	"go.viam.com/rdk/data"
)

func tooOld(ctx context.Context, lastUpdate time.Time) error {
	if time.Since(lastUpdate) < time.Minute {
		return nil
	}

	if ctx.Value(data.FromDMContextKey{}) == true {
		// we're from data capture
		// since data is too old, just don't store anything or log
		return data.ErrNoCaptureToStore
	}

	return fmt.Errorf("lastUpdate update too old: %v", lastUpdate)

}
