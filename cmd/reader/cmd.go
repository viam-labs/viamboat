package main

import (
	"flag"
	"fmt"
	"time"

	"go.viam.com/rdk/logging"

	"github.com/erh/viamboat"
)

func main() {
	err := realMain()
	if err != nil {
		panic(err)
	}
}

func realMain() error {

	seconds := 5
	pgn := -1

	flag.IntVar(&seconds, "seconds", seconds, "how many seconds to run for")
	flag.IntVar(&pgn, "pgn", -1, "which pgn (-1 for all)")
	flag.Parse()

	if flag.NArg() == 0 {
		return fmt.Errorf("need one source, either .json or can interface name")
	}

	reader := viamboat.CreateReader(flag.Arg(0), logging.NewLogger("viamboat"))

	reader.AddCallback(pgn, func(data viamboat.CANMessage) error {
		fmt.Printf("%v\n", data)
		return nil
	})
	reader.Start()

	time.Sleep(time.Duration(int(time.Second) * seconds))
	return reader.Close()
}
