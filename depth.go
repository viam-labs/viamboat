package viamboat

import (
	"context"
	"math"
	"fmt"
	"sync"
	"time"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/data"
	"go.viam.com/rdk/logging"
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/utils"
)

var DepthSensor = family.WithModel("depth")

func init() {
	resource.RegisterComponent(
		sensor.API,
		DepthSensor,
		resource.Registration[sensor.Sensor, resource.NoNativeConfig]{
			Constructor: newDepthSensor,
		})
}

func AddDepthSensor(m CANMessage, conf *config.Config, src string) (*resource.Config, error) {
	for _, c := range conf.Components {
		if c.Model == DepthSensor {
			return nil, nil
		}
	}

	attr := utils.AttributeMap{
		//"pgn":    m.Pgn,
		"reader": src,
	}

	return &resource.Config{
		Name:       "depth",
		API:        sensor.API,
		Model:      DepthSensor,
		Attributes: attr,
	}, nil
}

func newDepthSensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger logging.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &depthData{name: config.ResourceName(), sources: map[int]CANMessage{}}

	src := config.Attributes.Int("src", -1)

	r.AddCallback(config.Attributes.Int("pgn", -1), func(m CANMessage) error {
		if src > 0 && m.Src != src {
			return nil
		}

		_, ok := m.Fields["Depth"].(float64)
		if !ok {
			return nil
		}

		g.mu.Lock()
		defer g.mu.Unlock()

		g.sources[m.Src] = m
		return nil
	})

	return g, nil
}

type depthData struct {
	resource.AlwaysRebuild
	name resource.Name

	mu      sync.Mutex
	sources map[int]CANMessage
}

func (g *depthData) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {

	m := map[string]interface{}{}

	g.mu.Lock()
	defer g.mu.Unlock()

	// for now we're going to pick the shallowest reading over the last minute

	depthValid := false
	realDepth := 10000000.0

	for _, m := range g.sources {
		depth, ok := m.Fields["Depth"].(float64)
		if !ok || math.IsNaN(depth) {
			continue
		}

		if time.Since(m.Created) > time.Minute {
			continue
		}

		depthValid = true

		if false {
			// TODO(erh): i'm not sure if this is supposed to be done or not
			offset := m.Fields["Offset"].(float64)
			depth = depth - offset
		}

		if depth < realDepth {
			realDepth = depth
		}
	}

	if !depthValid {
		if ctx.Value(data.FromDMContextKey{}) == true {
			// we're from data capture
			return nil, data.ErrNoCaptureToStore
		}

		return nil, fmt.Errorf("no valid depth data")
	}

	m["Depth"] = realDepth

	return m, nil
}

func (g *depthData) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}

func (g *depthData) Close(ctx context.Context) error {
	return nil
}

func (g *depthData) Name() resource.Name {
	return g.name
}
