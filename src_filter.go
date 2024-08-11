package viamboat

import (
	"go.viam.com/rdk/utils"
)

type srcFilter struct {
	srcs []int
}

func createSrcFilter(attrs utils.AttributeMap) srcFilter {
	f := srcFilter{srcs: []int{}}

	src, ok := attrs["src"].(int)
	if ok {
		f.srcs = append(f.srcs, src)
	}

	srcs, ok := attrs["srcs"].([]int)
	if ok {
		f.srcs = append(f.srcs, srcs...)
	}
	
	return f
}

func (f srcFilter) Good(src int) bool {
	if len(f.srcs) == 0 {
		return true
	}
	for _, x := range f.srcs {
		if x == src {
			return true
		}
	}
	return false
}
