package viamboat

import (
	"context"
	"testing"
	"time"

	"go.viam.com/rdk/logging"
	"go.viam.com/rdk/resource"
	"go.viam.com/test"
)

func TestAISReadings(t *testing.T) {
	logger := logging.NewDebugLogger("foo")
	r := newJSONReader(staticFileJSONStreamCreator("data/sample.json", true), logger)

	s, err := newAllPgnSensor2(resource.Name{}, r)
	test.That(t, err, test.ShouldBeNil)

	r.Start()

	for i := 0; i < 1000; i++ {
		time.Sleep(time.Millisecond)
		if s.size() > 70 {
			break
		}
	}
	test.That(t, s.size(), test.ShouldBeGreaterThan, 70)
	_, err = s.Readings(context.Background(), nil)
	test.That(t, err, test.ShouldBeNil)

}
