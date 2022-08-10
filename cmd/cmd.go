package main

import (
	"context"
	"errors"
	"fmt"
	"strings"
	"sync"
	"time"

	"github.com/edaniels/golog"
	"github.com/golang/geo/r3"
	geo "github.com/kellydunn/golang-geo"

	"go.viam.com/rdk/component/movementsensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/resource"
	robotimpl "go.viam.com/rdk/robot/impl"
	"go.viam.com/rdk/robot/web"
	_ "go.viam.com/rdk/services/sensors"
	"go.viam.com/rdk/spatialmath"
	rutils "go.viam.com/rdk/utils"

	"go.viam.com/utils"

	"github.com/erh/viamboat"
)

var logger = golog.NewLogger("viamboat")

type movementsensorData struct {
	lastUpdate  time.Time
	point       *geo.Point
	cog         float64
	sog         float64 // in meters / second
	orientation spatialmath.EulerAngles

	mu sync.Mutex
}

func (g *movementsensorData) GetPosition(ctx context.Context) (*geo.Point, float64, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	// TODO: return error if too old
	return g.point, 0, g.tooOld()
}

func (g *movementsensorData) GetLinearVelocity(ctx context.Context) (r3.Vector, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return r3.Vector{0, g.sog * 1000, 0}, g.tooOld()
}

func (g *movementsensorData) GetAngularVelocity(ctx context.Context) (spatialmath.AngularVelocity, error) {
	return spatialmath.AngularVelocity{}, nil
}

func (g *movementsensorData) GetCompassHeading(ctx context.Context) (float64, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return g.cog, g.tooOld()
}

func (g *movementsensorData) GetOrientation(ctx context.Context) (spatialmath.Orientation, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return &g.orientation, g.tooOld()
}

func (g *movementsensorData) GetAccuracy(ctx context.Context) (map[string]float32, error) {
	return map[string]float32{}, nil
}

func (g *movementsensorData) GetProperties(ctx context.Context) (*movementsensor.Properties, error) {
	return &movementsensor.Properties{
		LinearVelocitySupported:  true,
		AngularVelocitySupported: false,
		OrientationSupported:     true,
		PositionSupported:        true,
		CompassHeadingSupported:  true,
	}, nil
}

func (g *movementsensorData) Do(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return nil, nil
}

func (g *movementsensorData) GetReadings(ctx context.Context) ([]interface{}, error) {
	return movementsensor.GetReadings(ctx, g)
}

func (g *movementsensorData) tooOld() error {
	if time.Since(g.lastUpdate) > time.Minute {
		return fmt.Errorf("lastUpdate update too old: %v\n", g.lastUpdate)
	}
	return nil
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

	myMovementsensorData := &movementsensorData{}

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
		myMovementsensorData.mu.Lock()
		defer myMovementsensorData.mu.Unlock()
		lat, ok := m.Fields["Latitude"].(float64)
		if !ok {
			return fmt.Errorf("Latitude was not a float")
		}
		lng, ok := m.Fields["Longitude"].(float64)
		if !ok {
			return fmt.Errorf("Longitude was not a float")
		}
		myMovementsensorData.point = geo.NewPoint(lat, lng)
		myMovementsensorData.lastUpdate = time.Now()
		return nil
	})

	// 129026 COG & SOG, Rapid Update map[COG:118.7 COG Reference:True SID:115 SOG:0.01
	r.AddCallback(129026, func(m viamboat.CANMessage) error {
		myMovementsensorData.mu.Lock()
		defer myMovementsensorData.mu.Unlock()
		sog, ok := m.Fields["SOG"].(float64)
		if !ok {
			return fmt.Errorf("SOG was not a float64")
		}
		myMovementsensorData.sog = sog

		myMovementsensorData.cog, ok = m.Fields["COG"].(float64)
		if !ok {
			return fmt.Errorf("COG was not a float64")
		}
		myMovementsensorData.lastUpdate = time.Now()
		return nil
	})

	//127257 Attitude map[Pitch:0.1 Roll:0.3 Yaw:145.3]}
	r.AddCallback(127257, func(m viamboat.CANMessage) error {
		myMovementsensorData.mu.Lock()
		defer myMovementsensorData.mu.Unlock()
		var ok bool

		myMovementsensorData.orientation.Roll, ok = m.Fields["Roll"].(float64)
		if !ok {
			return fmt.Errorf("Pitch wrong?")
		}

		myMovementsensorData.orientation.Pitch, ok = m.Fields["Pitch"].(float64)
		if !ok {
			return fmt.Errorf("Pitch wrong?")
		}

		myMovementsensorData.orientation.Yaw, ok = m.Fields["Yaw"].(float64)
		if !ok {
			return fmt.Errorf("Pitch wrong?")
		}

		myMovementsensorData.orientation.Roll = rutils.DegToRad(myMovementsensorData.orientation.Roll)
		myMovementsensorData.orientation.Pitch = rutils.DegToRad(myMovementsensorData.orientation.Pitch)
		myMovementsensorData.orientation.Yaw = rutils.DegToRad(myMovementsensorData.orientation.Yaw)

		myMovementsensorData.lastUpdate = time.Now()
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
