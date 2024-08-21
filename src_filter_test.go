package viamboat

import (
	"testing"

	"go.viam.com/rdk/utils"
	"go.viam.com/test"
)

func TestSrcFilter1(t *testing.T) {
	f := createSrcFilter(utils.AttributeMap{})
	test.That(t, f.Good(123), test.ShouldBeTrue)

	f = createSrcFilter(utils.AttributeMap{"src": 5})
	test.That(t, f.Good(5), test.ShouldBeTrue)
	test.That(t, f.Good(6), test.ShouldBeFalse)

	f = createSrcFilter(utils.AttributeMap{"src": 5.0})
	test.That(t, f.Good(5), test.ShouldBeTrue)
	test.That(t, f.Good(6), test.ShouldBeFalse)

	f = createSrcFilter(utils.AttributeMap{"srcs": []int{5}})
	test.That(t, f.Good(5), test.ShouldBeTrue)
	test.That(t, f.Good(6), test.ShouldBeFalse)

	f = createSrcFilter(utils.AttributeMap{"src": 7, "srcs": []int{5}})
	test.That(t, f.Good(5), test.ShouldBeTrue)
	test.That(t, f.Good(7), test.ShouldBeTrue)
	test.That(t, f.Good(6), test.ShouldBeFalse)

	f = createSrcFilter(utils.AttributeMap{"src": 7, "srcs": []float64{5}})
	test.That(t, f.Good(5), test.ShouldBeTrue)
	test.That(t, f.Good(7), test.ShouldBeTrue)
	test.That(t, f.Good(6), test.ShouldBeFalse)

	f = createSrcFilter(utils.AttributeMap{"srcs": []interface{}{5, 7.0}})
	test.That(t, f.Good(5), test.ShouldBeTrue)
	test.That(t, f.Good(7), test.ShouldBeTrue)
	test.That(t, f.Good(6), test.ShouldBeFalse)

}
