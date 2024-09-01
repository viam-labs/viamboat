//go:build linux

package viamboat

import (
	"fmt"
	"testing"

	"go.viam.com/rdk/logging"
	"go.viam.com/test"

	"github.com/erh/gonmea/analyzer"

	"github.com/go-daq/canbus"
)

func TestConvert(t *testing.T) {
	logger := logging.NewTestLogger(t)
	parserIn, err := analyzer.NewAnalyzer(analyzer.NewConfig(logger))
	test.That(t, err, test.ShouldBeNil)

	msgCommon, finished, err := parserIn.ProcessMessage([]byte("!PDGY,130567,6,200,255,28831.51,RgPczwEA2XUHAAcAAAAAAAAAAABw0CgA\n"))
	test.That(t, err, test.ShouldBeNil)
	test.That(t, finished, test.ShouldBeTrue)

	msg := commonToMe(msgCommon)
	fmt.Printf("yo %v\n", msg)

	ff, err := Convert(msg)
	test.That(t, err, test.ShouldBeNil)

	parserOut, err := analyzer.NewAnalyzer(analyzer.NewConfig(logger))
	test.That(t, err, test.ShouldBeNil)

	for idx, f := range ff {
		t.Log("processing frame", idx)
		rm := frameToRawMessage(f)
		msg, hasMsg, err := parserOut.ConvertRawMessage(&rm)
		test.That(t, err, test.ShouldBeNil)
		fmt.Printf("%d %d %v %v\n", len(ff), idx, hasMsg, msg)
		if idx < len(ff)-1 {
			test.That(t, hasMsg, test.ShouldBeFalse)
		} else {
			test.That(t, hasMsg, test.ShouldBeTrue)
			fmt.Printf("hi %v\n", msg)
		}
	}
}

func TestConvert2(t *testing.T) {
	ff := []canbus.Frame{
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc0, 0xab, 0xcc, 0xff, 0xe, 0x31, 0xae, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc1, 0xd0, 0x42, 0x5c, 0x12, 0x0, 0x0, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc2, 0x0, 0xf2, 0xf, 0x8b, 0x18, 0x96, 0x29}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc3, 0x94, 0x11, 0x0, 0x0, 0x0, 0x0, 0xf2}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc4, 0x12, 0x16, 0x22, 0x89, 0x81, 0x68, 0x10}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc5, 0x0, 0x0, 0x0, 0x0, 0xf2, 0x17, 0xb9}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc6, 0x2f, 0x70, 0xe6, 0x68, 0x10, 0x0, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc7, 0x0, 0x0, 0xf2, 0x18, 0xa2, 0x2b, 0x95}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc8, 0x47, 0x3c, 0xf, 0x0, 0x0, 0x0, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xc9, 0xf2, 0x5, 0x5d, 0x1, 0xb8, 0x4d, 0xd8}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xca, 0xe, 0x0, 0x0, 0x0, 0x0, 0xf2, 0xd}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xcb, 0x68, 0x3, 0x2d, 0x26, 0x74, 0xe, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xcc, 0x0, 0x0, 0x0, 0xf2, 0x2c, 0xb, 0x11}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xcd, 0x94, 0xa1, 0x74, 0xe, 0x0, 0x0, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xce, 0x0, 0xf2, 0x20, 0x51, 0xe, 0xce, 0xab}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xcf, 0x10, 0xe, 0x0, 0x0, 0x0, 0x0, 0xf2}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd0, 0x2e, 0xe8, 0xa, 0x65, 0xa8, 0xac, 0xd}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd1, 0x0, 0x0, 0x0, 0x0, 0xf2, 0xa, 0xdc}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd2, 0x17, 0x4d, 0xd1, 0xe4, 0xc, 0x0, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd3, 0x0, 0x0, 0xf2, 0x16, 0x5d, 0x1, 0xad}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd4, 0x1e, 0x1c, 0xc, 0x0, 0x0, 0x0, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd5, 0xf2, 0x8, 0x5d, 0x1, 0x7c, 0xd9, 0xb8}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd6, 0xb, 0x0, 0x0, 0x0, 0x0, 0xf2, 0x1b}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd7, 0xd1, 0x6, 0xb6, 0xc5, 0x54, 0xb, 0x0}, Kind: 0x1},
		canbus.Frame{ID: 0x19fa0416, Data: []uint8{0xd8, 0x0, 0x0, 0x0, 0xf2, 0xff, 0xff, 0xff}, Kind: 0x1},
	}

	logger := logging.NewTestLogger(t)
	parser, err := analyzer.NewAnalyzer(analyzer.NewConfig(logger))
	test.That(t, err, test.ShouldBeNil)
	var m CANMessage

	for idx, f := range ff {
		rm := frameToRawMessage(f)
		msg, hasMsg, err := parser.ConvertRawMessage(&rm)
		test.That(t, err, test.ShouldBeNil)
		if idx < len(ff)-1 {
			test.That(t, hasMsg, test.ShouldBeFalse)
		} else {
			test.That(t, hasMsg, test.ShouldBeTrue)
			m = commonToMe(msg)
		}
	}

	test.That(t, 14, test.ShouldEqual, m.Fields["Sats in View"])

	ff2, err := Convert(m)
	test.That(t, err, test.ShouldBeNil)
	test.That(t, len(ff2), test.ShouldEqual, len(ff))

	for idx, fa := range ff {
		t.Log("equality check for frame", idx)
		fb := ff2[idx]
		test.That(t, fa.ID, test.ShouldEqual, fb.ID)
		test.That(t, fa.Kind, test.ShouldEqual, fb.Kind)
		test.That(t, len(fa.Data), test.ShouldEqual, len(fb.Data))

		for idx2, x := range fa.Data {
			y := fb.Data[idx2]
			test.That(t, x, test.ShouldEqual, y)
		}
	}
}

func TestConvert3(t *testing.T) {

	msg := CANMessage{
		Priority: 2,
		Src:      170,
		Dst:      255,
		Pgn:      126985,
		Fields: map[string]interface{}{
			"Alert Type":                      "Warning",
			"Alert Category":                  "Technical",
			"Alert System":                    17,
			"Alert Sub-System":                18,
			"Alert ID":                        517,
			"Data Source Network ID NAME":     19,
			"Data Source Instance":            0,
			"Data Source Index-Source":        0,
			"Alert Occurrence Number":         0,
			"Language ID":                     "English (US)",
			"Alert Text Description":          "eliot",
			"Alert Location Text Description": "eliot2",
		},
	}

	ff, err := Convert(msg)
	test.That(t, err, test.ShouldBeNil)

	logger := logging.NewTestLogger(t)
	parser, err := analyzer.NewAnalyzer(analyzer.NewConfig(logger))

	for idx, f := range ff {
		rm := frameToRawMessage(f)
		msg2, hasMsg, err := parser.ConvertRawMessage(&rm)
		test.That(t, err, test.ShouldBeNil)
		fmt.Printf("%d %d %v %v\n", len(ff), idx, hasMsg, msg2)
		if idx < len(ff)-1 {
			test.That(t, hasMsg, test.ShouldBeFalse)
		} else {
			test.That(t, hasMsg, test.ShouldBeTrue)
			msg2me := commonToMe(msg2)

			test.That(t, msg2me.Priority, test.ShouldEqual, msg.Priority)
			test.That(t, msg2me.Src, test.ShouldEqual, msg.Src)
			test.That(t, msg2me.Dst, test.ShouldEqual, msg.Dst)
			test.That(t, msg2me.Pgn, test.ShouldEqual, msg.Pgn)
			test.That(t, msg2me.Fields, test.ShouldResemble, msg.Fields)
		}
	}

}
