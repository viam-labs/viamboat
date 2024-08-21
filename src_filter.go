package viamboat

import (
	"go.viam.com/rdk/utils"
)

type srcFilter struct {
	srcs []int
}

func createSrcFilter(attrs utils.AttributeMap) *srcFilter {
	f := &srcFilter{srcs: []int{}}
	f.parseSrc(attrs)
	return f
}

func (f *srcFilter) parseSrc(attrs utils.AttributeMap) {
	src, ok := attrs["src"].(int)
	if ok {
		f.srcs = append(f.srcs, src)
	}

	srcf, ok := attrs["src"].(float64)
	if ok {
		f.srcs = append(f.srcs, int(srcf))
	}

	srcsInt, ok := attrs["srcs"].([]int)
	if ok {
		f.srcs = append(f.srcs, srcsInt...)
	}

	srcsFloat, ok := attrs["srcs"].([]float64)
	if ok {
		for _, x := range srcsFloat {
			f.srcs = append(f.srcs, int(x))
		}
	}

	_, ok = attrs["srcs"].([]interface{})
	if ok {
		srcsInt = attrs.IntSlice("srcs")
		f.srcs = append(f.srcs, srcsInt...)
	}
}

func (f srcFilter) Good(m CANMessage) bool {
	if !f.GoodSrc(m.Src) {
		return false
	}

	return true
}

func (f srcFilter) GoodSrc(src int) bool {
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
