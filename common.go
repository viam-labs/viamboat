package viamboat

import (
	"context"
	"fmt"
	"time"

	"go.viam.com/rdk/data"
	"go.viam.com/rdk/resource"
)

var family = resource.ModelNamespace("viam-labs").WithFamily("viamboat")

func tooOld(ctx context.Context, lastUpdate time.Time) error {
	if time.Since(lastUpdate) < time.Minute {
		return nil
	}

	fromdm := ctx.Value(data.FromDMContextKey{})
	if fromdm == true {
		// we're from data capture
		// since data is too old, just don't store anything or log
		return data.ErrNoCaptureToStore
	}

	if true {
		return data.ErrNoCaptureToStore // TODO(erh): remove this when above works
	}

	return fmt.Errorf("lastUpdate update too old: %v (%v)", lastUpdate, fromdm)
}
