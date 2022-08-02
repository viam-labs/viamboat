package main

import (
	"context"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/edaniels/golog"
	geo "github.com/kellydunn/golang-geo"

	"go.viam.com/rdk/component/gps"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/resource"
	robotimpl "go.viam.com/rdk/robot/impl"
	"go.viam.com/rdk/robot/web"
	"go.viam.com/utils"

	"github.com/erh/viamboat"
)

var logger = golog.NewLogger("viamboat")

type gpsData struct {
	lastUpdate time.Time
	point      *geo.Point
	sog        float64
}

func (g *gpsData) ReadLocation(ctx context.Context) (*geo.Point, error) {
	// TODO: return error if too old
	return g.point, nil
}

func (g *gpsData) ReadAltitude(ctx context.Context) (float64, error) {
	return 0, nil
}

func (g *gpsData) ReadSpeed(ctx context.Context) (float64, error) {
	// TODO: this is probably in knots?
	return g.sog, nil
}

func (g *gpsData) ReadAccuracy(ctx context.Context) (float64, float64, error) {
	return 0, 0, nil
}

func (g *gpsData) ReadSatellites(ctx context.Context) (int, int, error) {
	return 0, 0, nil
}

func (g *gpsData) ReadValid(ctx context.Context) (bool, error) {
	return true, nil
}

func (g *gpsData) Do(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return nil, nil
}

func (g *gpsData) GetReadings(ctx context.Context) ([]interface{}, error) {
	return gps.GetReadings(ctx, g)
}

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

	myGpsData := &gpsData{}

	seen := map[int]bool{}
	r.AddCallback(-1, func(m viamboat.CANMessage) error {
		if seen[m.Pgn] {
			return nil
		}
		fmt.Println(m)
		seen[m.Pgn] = true
		return nil
	})

	r.AddCallback(129025, func(m viamboat.CANMessage) error {
		lat, ok := m.Fields["Latitude"].(float64)
		if !ok {
			return fmt.Errorf("Latitude was not a float")
		}
		lng, ok := m.Fields["Longitude"].(float64)
		if !ok {
			return fmt.Errorf("Longitude was not a float")
		}
		myGpsData.point = geo.NewPoint(lat, lng)
		return nil
	})

	// 129026 COG & SOG, Rapid Update map[COG:118.7 COG Reference:True SID:115 SOG:0.01
	r.AddCallback(129026, func(m viamboat.CANMessage) error {
		sog, ok := m.Fields["SOG"].(float64)
		if !ok {
			return fmt.Errorf("SOG was not a float64")
		}
		myGpsData.sog = sog

		return nil
	})

	r.Start()

	myRobot, err := robotimpl.RobotFromResources(
		ctx,
		map[resource.Name]interface{}{
			gps.Named("gps1"): gps.LocalGPS(myGpsData),
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
