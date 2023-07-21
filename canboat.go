package viamboat

import (
	"fmt"
	"io"
	"os/exec"
)

func canBoatJSONCreate(ifName string) jsonStreamCreator {
	cmd := fmt.Sprintf("candump %s | candump2analyzer | analyzer -json -q", ifName)
	return func() (io.ReadCloser, error) {
		fmt.Printf("cmd [%s]\n", cmd)
		c := exec.Command("bash", "-c", cmd)

		out, err := c.StdoutPipe()
		if err != nil {
			return nil, err
		}

		c.Stderr = c.Stdout

		err = c.Start()
		if err != nil {
			return nil, err
		}

		return out, nil
	}

}
