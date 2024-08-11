package viamboat

import (
	"testing"

	"go.viam.com/rdk/utils"
	"go.viam.com/test"
)

func TestSrcFilter1(t *testing.T) {
	f := createSrcFilter(utils.AttributeMap{})
	test.ShouldBeTrue(t, f.Good(123))

	f = createSrcFilter(utils.AttributeMap{"src" : 5})
	test.ShouldBeTrue(t, f.Good(5))
	test.ShouldBeFalse(t, f.Good(6))

	f = createSrcFilter(utils.AttributeMap{"srcs" : []int{5}})
	test.ShouldBeTrue(t, f.Good(5))
	test.ShouldBeFalse(t, f.Good(6))

	f = createSrcFilter(utils.AttributeMap{"src" : 7, "srcs" : []int{5}})
	test.ShouldBeTrue(t, f.Good(5))
	test.ShouldBeTrue(t, f.Good(7))
	test.ShouldBeFalse(t, f.Good(6))

	
	
}
