package viamboat

import (
	"context"
	"testing"
	"time"

	"go.viam.com/test"
)

func TestMergeMaps(t *testing.T) {

	ctx := context.Background()

	bs := boatsensor{
		lastMessage: CANMessage{
			Fields: map[string]interface{}{"a": 1, "b": 2},
		},
		lastTime: time.Now(),
	}

	m, err := bs.Readings(ctx, nil)
	test.That(t, err, test.ShouldBeNil)
	test.That(t, 2, test.ShouldEqual, len(m))

	bs.fieldsToAdd = map[string]interface{}{"a": 3, "c": 4}
	m, err = bs.Readings(ctx, nil)
	test.That(t, err, test.ShouldBeNil)
	test.That(t, 3, test.ShouldEqual, len(m))
	test.That(t, 3, test.ShouldEqual, m["a"])
	test.That(t, 4, test.ShouldEqual, m["c"])

	test.That(t, 2, test.ShouldEqual, len(bs.lastMessage.Fields))

}
