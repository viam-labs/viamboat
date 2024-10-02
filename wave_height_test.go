package viamboat

import (
	"context"
	"testing"
	"time"

	"go.viam.com/rdk/logging"
	"go.viam.com/test"
)

func TestWaveHeight(t *testing.T) {

	ctx := context.Background()

	data := map[int]*circularBuffer{
		1: newCircularBuffer(logging.NewDebugLogger("test")),
	}

	for i := 1; i < 602; i++ {
		data[1].Add(float64(i))
	}

	whs := waveheightsensor{
		lastUpdate: time.Now(),
		data:       data,
	}

	test.That(t, whs.data[1].count, test.ShouldEqual, 600)
	test.That(t, whs.data[1].buffer[0], test.ShouldEqual, 1)
	m, err := whs.Readings(ctx, nil)
	test.That(t, err, test.ShouldBeNil)
	test.That(t, len(m), test.ShouldEqual, 7)
	test.That(t, m, test.ShouldContainKey, "Wave10MinuteAvg")

	test.That(t, m["Wave10MinuteAvg"], test.ShouldEqual, 1)
}
