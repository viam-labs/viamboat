package viamboat

import (
	"context"
	"fmt"
	"sync"
	"time"

	"github.com/edaniels/golog"
	"github.com/golang/geo/r3"
	geo "github.com/kellydunn/golang-geo"

	"go.viam.com/rdk/components/movementsensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/registry"
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/spatialmath"
	rutils "go.viam.com/rdk/utils"
)

const MovementModelName = "boat-movement"

func init() {
	registry.RegisterComponent(
		movementsensor.Subtype,
		MovementModelName,
		registry.Component{Constructor: func(
			ctx context.Context,
			_ registry.Dependencies,
			config config.Component,
			logger golog.Logger,
		) (interface{}, error) {
			return newMovementSensor(ctx, config, logger)
		}})
}

func AddMovementSensor(m CANMessage, conf *config.Config) (*config.Component, error) {
	for _, c := range conf.Components {
		if c.Model == MovementModelName {
			return nil, nil
		}
	}

	return &config.Component{
		Name:      "movement",
		Type:      movementsensor.SubtypeName,
		Model:     MovementModelName,
		Namespace: resource.ResourceNamespaceRDK,
	}, nil
}

func IsMovementPGN(pgn int) bool {
	return pgn == 129025 || pgn == 129026 || pgn == 127257
}

func newMovementSensor(ctx context.Context, config config.Component, logger golog.Logger) (movementsensor.MovementSensor, error) {
	r, err := GlobalReaderRegistry.Reader(config.Attributes.String("reader"))
	if err != nil {
		return nil, err
	}
	myMovementsensorData := &movementsensorData{}

	r.AddCallback(129025, func(m CANMessage) error {
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
	r.AddCallback(129026, func(m CANMessage) error {
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
	r.AddCallback(127257, func(m CANMessage) error {
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

	return myMovementsensorData, nil
}

type movementsensorData struct {
	lastUpdate  time.Time
	point       *geo.Point
	cog         float64
	sog         float64 // in meters / second
	orientation spatialmath.EulerAngles

	mu sync.Mutex
}

func (g *movementsensorData)Position(ctx context.Context) (*geo.Point, float64, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	// TODO: return error if too old
	return g.point, 0, g.tooOld()
}

func (g *movementsensorData)LinearVelocity(ctx context.Context) (r3.Vector, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return r3.Vector{0, g.sog * 1000, 0}, g.tooOld()
}

func (g *movementsensorData)AngularVelocity(ctx context.Context) (spatialmath.AngularVelocity, error) {
	return spatialmath.AngularVelocity{}, nil
}

func (g *movementsensorData)CompassHeading(ctx context.Context) (float64, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return g.cog, g.tooOld()
}

func (g *movementsensorData)Orientation(ctx context.Context) (spatialmath.Orientation, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return &g.orientation, g.tooOld()
}

func (g *movementsensorData)Accuracy(ctx context.Context) (map[string]float32, error) {
	return map[string]float32{}, nil
}

func (g *movementsensorData)Properties(ctx context.Context) (*movementsensor.Properties, error) {
	return &movementsensor.Properties{
		LinearVelocitySupported:  true,
		AngularVelocitySupported: false,
		OrientationSupported:     true,
		PositionSupported:        true,
		CompassHeadingSupported:  true,
	}, nil
}

func (g *movementsensorData) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return nil, nil
}

func (g *movementsensorData)Readings(ctx context.Context) (map[string]interface{}, error) {
	return movementsensor.Readings(ctx, g)
}

func (g *movementsensorData) tooOld() error {
	if time.Since(g.lastUpdate) > time.Minute {
		return fmt.Errorf("lastUpdate update too old: %v\n", g.lastUpdate)
	}
	return nil
}
