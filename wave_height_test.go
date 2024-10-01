package viamboat

import (
	"context"
	"fmt"
	"testing"
	"time"

	"go.viam.com/test"
)

func TestWaveHeight(t *testing.T) {

	ctx := context.Background()

	data := map[int]*circularBuffer{
		1: newCircularBuffer(10),
	}

	for i := 1; i < 12; i++ {
		data[1].Add(float64(i))
	}

	whs := waveheightsensor{
		lastUpdate: time.Now(),
		data:       data,
	}

	test.That(t, whs.data[1].count, test.ShouldEqual, 10)
	test.That(t, whs.data[1].buffer[0], test.ShouldEqual, 1)
	m, err := whs.Readings(ctx, nil)
	test.That(t, err, test.ShouldBeNil)
	test.That(t, len(m), test.ShouldEqual, 3)
	test.That(t, m, test.ShouldContainKey, "1")

	src := m["1"].(map[string]float64)

	fmt.Println(src)
	test.That(t, src, test.ShouldNotBeNil)
	test.That(t, len(src), test.ShouldEqual, 4)
	test.That(t, src, test.ShouldContainKey, "heightAvg")
	test.That(t, src["heightAvg"], test.ShouldEqual, 1)
	test.That(t, src["count"], test.ShouldEqual, 10)

}
