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
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/spatialmath"
	rutils "go.viam.com/rdk/utils"
)

var model = resource.DefaultModelFamily.WithModel("boat-movement")

func init() {
	resource.RegisterComponent(
		movementsensor.API,
		model,
		resource.Registration[movementsensor.MovementSensor, resource.NoNativeConfig]{
			Constructor: newMovementSensor,
		})
}

func AddMovementSensor(m CANMessage, conf *config.Config) (*resource.Config, error) {
	for _, c := range conf.Components {
		if c.Model == model {
			return nil, nil
		}
	}

	return &resource.Config{
		Name:  "movement",
		API:   movementsensor.API,
		Model: model,
	}, nil
}

func IsMovementPGN(pgn int) bool {
	return pgn == 129025 || pgn == 129026 || pgn == 127257 || pgn == 127250
}

func newMovementSensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger golog.Logger) (movementsensor.MovementSensor, error) {
	r, err := GlobalReaderRegistry.Reader(config.Attributes.String("reader"))
	if err != nil {
		return nil, err
	}
	myMovementsensorData := &movementsensorData{name: config.ResourceName()}

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
		myMovementsensorData.validPoint = true
		myMovementsensorData.point = geo.NewPoint(lat, lng)
		myMovementsensorData.lastUpdate = time.Now()
		return nil
	})

	// 129026 COG & SOG, Rapid Update map[COG:118.7 COG Reference:True SID:115 SOG:0.01
	r.AddCallback(129026, func(m CANMessage) error {
		myMovementsensorData.mu.Lock()
		defer myMovementsensorData.mu.Unlock()
		sog, ok := m.Fields["SOG"].(float64)
		if ok {
			myMovementsensorData.sog = sog
			myMovementsensorData.validSog = true
		}

		if !myMovementsensorData.haveRealHeading {
			myMovementsensorData.cog, ok = m.Fields["COG"].(float64)
			if ok {
				myMovementsensorData.validCog = true
			}
		}
		myMovementsensorData.lastUpdate = time.Now()
		return nil
	})

	// {"prio":2,"src":0,"dst":255,"pgn":127250,"description":"Vessel Heading","fields":{"Heading":145.3,"Reference":"Magnetic"}}
	r.AddCallback(127250, func(m CANMessage) error {
		myMovementsensorData.mu.Lock()
		defer myMovementsensorData.mu.Unlock()
		heading, ok := m.Fields["Heading"].(float64)
		if ok {
			myMovementsensorData.cog = heading
			myMovementsensorData.validCog = true
			myMovementsensorData.haveRealHeading = true
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
		if ok {
			myMovementsensorData.validOrientation = true
		} else {
			return nil
		}

		myMovementsensorData.orientation.Pitch, ok = m.Fields["Pitch"].(float64)
		if !ok {
			myMovementsensorData.validOrientation = false
			return nil
		}

		myMovementsensorData.orientation.Yaw, ok = m.Fields["Yaw"].(float64)
		if !ok {
			myMovementsensorData.validOrientation = false
			return nil
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
	name resource.Name

	lastUpdate time.Time

	validPoint bool
	point      *geo.Point

	haveRealHeading bool
	validCog        bool
	cog             float64

	validSog bool
	sog      float64 // in meters / second

	validOrientation bool
	orientation      spatialmath.EulerAngles

	mu sync.Mutex
}

func (g *movementsensorData) Position(ctx context.Context, extra map[string]interface{}) (*geo.Point, float64, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	// TODO: return error if too old
	return g.point, 0, g.tooOld()
}

func (g *movementsensorData) LinearVelocity(ctx context.Context, extra map[string]interface{}) (r3.Vector, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return r3.Vector{0, g.sog}, g.tooOld()
}

func (g *movementsensorData) LinearAcceleration(ctx context.Context, extra map[string]interface{}) (r3.Vector, error) {
	return r3.Vector{0, 0, 0}, nil
}

func (g *movementsensorData) AngularVelocity(ctx context.Context, extra map[string]interface{}) (spatialmath.AngularVelocity, error) {
	return spatialmath.AngularVelocity{}, nil
}

func (g *movementsensorData) CompassHeading(ctx context.Context, extra map[string]interface{}) (float64, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return g.cog, g.tooOld()
}

func (g *movementsensorData) Orientation(ctx context.Context, extra map[string]interface{}) (spatialmath.Orientation, error) {
	g.mu.Lock()
	defer g.mu.Unlock()
	return &g.orientation, g.tooOld()
}

func (g *movementsensorData) Accuracy(ctx context.Context, extra map[string]interface{}) (map[string]float32, error) {
	return map[string]float32{}, nil
}

func (g *movementsensorData) Properties(ctx context.Context, extra map[string]interface{}) (*movementsensor.Properties, error) {
	return &movementsensor.Properties{
		LinearVelocitySupported:  g.validSog,
		AngularVelocitySupported: false,
		OrientationSupported:     g.validOrientation,
		PositionSupported:        g.validPoint,
		CompassHeadingSupported:  g.validCog,
	}, nil
}

func (g *movementsensorData) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return nil, nil
}

func (g *movementsensorData) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {
	return movementsensor.Readings(ctx, g, extra)
}

func (g *movementsensorData) tooOld() error {
	if time.Since(g.lastUpdate) > time.Minute {
		return fmt.Errorf("lastUpdate update too old: %v\n", g.lastUpdate)
	}
	return nil
}

func (g *movementsensorData) Close(ctx context.Context) error {
	return nil
}

func (g *movementsensorData) Name() resource.Name {
	return g.name
}

func (g *movementsensorData) Reconfigure(ctx context.Context, deps resource.Dependencies, conf resource.Config) error {
	return nil
}
