package main

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/component/movementsensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/resource"
	robotimpl "go.viam.com/rdk/robot/impl"
	"go.viam.com/rdk/robot/web"
	_ "go.viam.com/rdk/services/sensors"

	"go.viam.com/utils"

	"github.com/erh/viamboat"
)

var logger = golog.NewLogger("viamboat")

func main() {
	utils.ContextualMain(mainWithArgs, logger)
}

func mainWithArgs(ctx context.Context, args []string, logger golog.Logger) error {

	if len(args) <= 1 {
		return errors.New("need a source, either .json or can interface name")
	}

	src := args[len(args)-1]
	var creator viamboat.JSONStreamCreator
	if strings.HasSuffix(src, ".json") {
		creator = viamboat.StaticFileJSONStreamCreator(src, false)
	} else {
		creator = viamboat.CANBoatJSONCreate(src)
	}

	r := viamboat.NewJSONReader(creator, logger)

	myMovementsensorData := viamboat.NewMovementSensor(r)

	seen := map[int]bool{}
	r.AddCallback(-1, func(m viamboat.CANMessage) error {
		if seen[m.Pgn] {
			return nil
		}
		fmt.Println(m)
		seen[m.Pgn] = true
		return nil
	})

	r.Start()

	myRobot, err := robotimpl.RobotFromResources(
		ctx,
		map[resource.Name]interface{}{
			movementsensor.Named("movementsensor1"): movementsensor.MovementSensor(myMovementsensorData),
		},
		logger,
	)
	if err != nil {
		return err
	}

	netconfig := config.NetworkConfig{}
	netconfig.BindAddress = "0.0.0.0:8081"

	if err := netconfig.Validate(""); err != nil {
		return nil
	}
	return web.RunWebWithConfig(ctx, myRobot, &config.Config{Network: netconfig}, logger)

}
