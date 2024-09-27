package viamboat

import (
	"testing"

	"go.viam.com/test"
)

func TestMessageCreate(t *testing.T) {
	s := sender{}

	m, err := s.createMessage(map[string]interface{}{
		"pgn":      5,
		"priority": 2,
		"src":      3,
		"fields": map[string]interface{}{
			"x": 5,
		},
	})

	test.That(t, err, test.ShouldBeNil)

	test.That(t, 5, test.ShouldEqual, m.Pgn)
	test.That(t, 2, test.ShouldEqual, m.Priority)
	test.That(t, 3, test.ShouldEqual, m.Src)
	test.That(t, 5, test.ShouldEqual, m.Fields["x"])
}
