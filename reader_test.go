package viamboat

import (
	"testing"
	"time"

	"go.viam.com/rdk/logging"
	"go.viam.com/test"
)

func TestParseLint(t *testing.T) {
	data := "{\"timestamp\":\"2022-08-01-17:57:09.475\",\"prio\":7,\"src\":7,\"dst\":255,\"pgn\":126720,\"description\":\"Manufacturer Proprietary fast-packet addressed\",\"fields\":{ \"Manufacturer Code\": \"Garmin\",\"Industry Code\":\"Marine\",\"Data\":\"e7 08 00 0a 03 01 03 0d d1 f9 cb af 0c 11 01 \"}}"
	l, err := unmarshalLine(data)
	test.That(t, err, test.ShouldBeNil)
	test.That(t, l.Priority, test.ShouldEqual, 7)
	test.That(t, l.Pgn, test.ShouldEqual, 126720)
	test.That(t, l.Fields["Manufacturer Code"], test.ShouldEqual, "Garmin")
}

func TestReader(t *testing.T) {
	logger := logging.NewDebugLogger("foo")
	r := newJSONReader(staticFileJSONStreamCreator("data/sample.json", true), logger)

	count1 := 0
	r.AddCallback(126720, func(m CANMessage) error {
		count1++
		return nil
	})

	count2 := 0
	r.AddCallback(-1, func(m CANMessage) error {
		count2++
		return nil
	})
	r.Start()

	for i := 0; i < 100; i++ {
		if count1 >= 13327 {
			break
		}
		time.Sleep(time.Millisecond * 10)
	}

	test.That(t, count1, test.ShouldEqual, 13327)
	test.That(t, count2, test.ShouldBeGreaterThan, 13327)

}
