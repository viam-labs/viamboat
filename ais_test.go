package viamboat

import (
	"testing"

	"go.viam.com/test"
)

func TestGetUserId(t *testing.T) {

	u, err := getUserId(CANMessage{Fields: map[string]interface{}{"User ID": 123}})
	test.That(t, err, test.ShouldBeNil)
	test.That(t, 123, test.ShouldEqual, u)

	u, err = getUserId(CANMessage{Fields: map[string]interface{}{"User ID": 123.0}})
	test.That(t, err, test.ShouldBeNil)
	test.That(t, 123, test.ShouldEqual, u)

	u, err = getUserId(CANMessage{Fields: map[string]interface{}{"User ID": "123"}})
	test.That(t, err, test.ShouldBeNil)
	test.That(t, 123, test.ShouldEqual, u)

	u, err = getUserId(CANMessage{Fields: map[string]interface{}{"User ID": "123.0"}})
	test.That(t, err, test.ShouldBeNil)
	test.That(t, 123, test.ShouldEqual, u)

}
