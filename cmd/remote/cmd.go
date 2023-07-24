package main

import (
	"context"
	"flag"
	"fmt"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/resource"
	robotimpl "go.viam.com/rdk/robot/impl"
	"go.viam.com/rdk/robot/web"
	_ "go.viam.com/rdk/services/sensors/builtin"
	rutils "go.viam.com/rdk/utils"

	"go.viam.com/utils"

	"github.com/erh/viamboat"
)

var logger = golog.NewLogger("viamboat")

func main() {
	utils.ContextualMain(mainWithArgs, logger)
}

func mainWithArgs(ctx context.Context, originalArgs []string, logger golog.Logger) error {

	addAllGeneric := false

	var fs flag.FlagSet
	fs.BoolVar(&addAllGeneric, "all-generic", false, "adds all unknown pgn as sensors")

	err := fs.Parse(originalArgs[1:])
	if err != nil {
		return err
	}

	if fs.NArg() == 0 {
		return fmt.Errorf("need one source, either .json or can interface name (%d) (%v)", fs.NArg(), fs.Args())
	}

	src := fs.Arg(fs.NArg() - 1)
	r, err := viamboat.GlobalReaderRegistry.GetOrCreate(src, logger)
	if err != nil {
		return err
	}

	netconfig := config.NetworkConfig{}
	netconfig.BindAddress = "0.0.0.0:8081"

	if err := netconfig.Validate(""); err != nil {
		return err
	}

	conf := &config.Config{
		Network: netconfig,
		Components: []resource.Config{
			{
				Name:  "all-boat-pgns",
				API:   sensor.API,
				Model: viamboat.AllPgnSensorModel,
				Attributes: rutils.AttributeMap{
					"reader": src,
				},
			},
		},
	}

	myRobot, err := robotimpl.New(ctx, conf, logger)
	if err != nil {
		return err
	}

	seen := map[int]bool{}
	r.AddCallback(-1, func(m viamboat.CANMessage) error {

		var err error
		var newComponent *resource.Config = nil

		if m.Pgn == 127505 {
			newComponent, err = viamboat.AddBoatsensor("fluid", m, conf, src, []string{"Type", "Instance"}, false)
		} else if m.Pgn == 127501 {
			newComponent, err = viamboat.AddBoatsensor("switch-bank-status", m, conf, src, []string{"Instance"}, false)
		} else if m.Pgn == 127502 {
			newComponent, err = viamboat.AddBoatsensor("switch-bank-control", m, conf, src, []string{"Instance"}, false)
		} else if viamboat.IsMovementPGN(m.Pgn) {
			newComponent, err = viamboat.AddMovementSensor(m, conf, src)
		} else if m.Pgn == 128267 {
			newComponent, err = viamboat.AddDepthSensor(m, conf, src)
		} else if m.Pgn == 129284 {
			newComponent, err = viamboat.AddBoatsensor("waypoint", m, conf, src, []string{}, false)
		} else if m.Pgn == 130312 {
			newComponent, err = viamboat.AddBoatsensor("temperature", m, conf, src, []string{}, false)
		} else if addAllGeneric {
			// this is nice but noisy...
			newComponent, err = viamboat.AddBoatsensor(fmt.Sprintf("generic-%d", m.Pgn), m, conf, src, []string{}, true)
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

	fmt.Printf("yoyo\n")
	err = web.RunWebWithConfig(ctx, myRobot, conf, logger)
	fmt.Printf("yoyo: %v\n", err)
	return err

}
