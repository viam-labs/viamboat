package viamboat

import (
	"net"
	"testing"
	"time"

	"go.viam.com/test"

	"go.viam.com/rdk/logging"
)

func TestDYFixAddress(t *testing.T) {
	test.That(t, fixAddress("foo.com:2000"), test.ShouldEqual, "foo.com:2000")
	test.That(t, fixAddress("foo.com"), test.ShouldEqual, "foo.com:2000")
}

func simpleHandler(t *testing.T, ln net.Listener) {
	conn, err := ln.Accept()
	test.That(t, err, test.ShouldBeNil)

	defer conn.Close()

	_, err = conn.Write([]byte("$PDGY,000000,0,0,2,28830,0,0\n"))
	test.That(t, err, test.ShouldBeNil)

	_, err = conn.Write([]byte("!PDGY,130567,6,200,255,28831.51,RgPczwEA2XUHAAcAAAAAAAAAAABw0CgA\n"))
	test.That(t, err, test.ShouldBeNil)

	_, err = conn.Write([]byte("!PDGY,130567,6,201,255,28832.84,BwDQzwMA23UhACEAAwAAAAAAAABgewYA\n"))
	test.That(t, err, test.ShouldBeNil)
}

func TestDY(t *testing.T) {

	logger := logging.NewTestLogger(t)

	ln, err := net.Listen("tcp", ":29999")
	test.That(t, err, test.ShouldBeNil)
	defer ln.Close()

	go simpleHandler(t, ln)

	r := NewDigitalYachtReader("127.0.0.1:29999", logger)
	test.That(t, r, test.ShouldNotBeNil)

	defer r.Close()

	got := []CANMessage{}

	r.AddCallback(-1, func(data CANMessage) error {
		got = append(got, data)
		return nil
	})

	r.Start()

	for i := 0; i < 400; i++ {
		if len(got) >= 2 {
			break
		}
		time.Sleep(10 * time.Millisecond)
	}
	test.That(t, len(got), test.ShouldEqual, 2)
}

func TestDYConnectAfter(t *testing.T) {
	logger := logging.NewTestLogger(t)

	r := NewDigitalYachtReader("127.0.0.1:29999", logger)
	test.That(t, r, test.ShouldNotBeNil)

	defer r.Close()

	got := []CANMessage{}

	r.AddCallback(-1, func(data CANMessage) error {
		got = append(got, data)
		return nil
	})

	r.Start()

	time.Sleep(time.Second)

	ln, err := net.Listen("tcp", ":29999")
	test.That(t, err, test.ShouldBeNil)
	defer ln.Close()

	go simpleHandler(t, ln)

	for i := 0; i < 800; i++ {
		if len(got) >= 2 {
			break
		}
		time.Sleep(10 * time.Millisecond)
	}
	test.That(t, len(got), test.ShouldEqual, 2)
}
