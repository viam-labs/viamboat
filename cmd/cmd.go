package main

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/config"
	"go.viam.com/rdk/resource"
	robotimpl "go.viam.com/rdk/robot/impl"
	"go.viam.com/rdk/robot/web"
	_ "go.viam.com/rdk/services/sensors/builtin"

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
	viamboat.GlobalReaderRegistry.Add("", r)

	netconfig := config.NetworkConfig{}
	netconfig.BindAddress = "0.0.0.0:8081"

	if err := netconfig.Validate(""); err != nil {
		return nil
	}

	conf := &config.Config{Network: netconfig}

	myRobot, err := robotimpl.New(ctx, conf, logger)
	if err != nil {
		return err
	}

	seen := map[int]bool{}
	r.AddCallback(-1, func(m viamboat.CANMessage) error {

		var err error
		var newComponent *resource.Config = nil

		if m.Pgn == 127505 {
			newComponent, err = viamboat.AddBoatsensor("fluid", m, conf, []string{"Type", "Instance"}, false)
		} else if m.Pgn == 127501 {
			newComponent, err = viamboat.AddBoatsensor("switch-bank-status", m, conf, []string{"Instance"}, false)
		} else if m.Pgn == 127502 {
			newComponent, err = viamboat.AddBoatsensor("switch-bank-control", m, conf, []string{"Instance"}, false)
		} else if viamboat.IsMovementPGN(m.Pgn) {
			newComponent, err = viamboat.AddMovementSensor(m, conf)
		} else if m.Pgn == 128267 {
			newComponent, err = viamboat.AddDepthSensor(m, conf)
		} else if m.Pgn == 129284 {
			newComponent, err = viamboat.AddBoatsensor("waypoint", m, conf, []string{}, false)
		} else {
			// this is nice but noisy...
			if false {
				newComponent, err = viamboat.AddBoatsensor(fmt.Sprintf("generic-%d", m.Pgn), m, conf, []string{}, true)
			}
		}

		if err != nil {
			return err
		}

		if newComponent != nil {
			logger.Debugf("doing a reconfigure")
			newConfig, err := conf.CopyOnlyPublicFields()
			if err != nil {
				return err
			}
			newConfig.Components = append(newConfig.Components, *newComponent)
			myRobot.Reconfigure(ctx, newConfig)
			conf = newConfig
		}

		if seen[m.Pgn] {
			return nil
		}

		logger.Infof("first time seeing this PGN %v", m)
		seen[m.Pgn] = true
		return nil
	})

	r.Start()

	return web.RunWebWithConfig(ctx, myRobot, conf, logger)

}
