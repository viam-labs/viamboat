package viamboat

import (
	"context"
	"fmt"
	"time"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/utils"
)

var depthSensor = resource.DefaultModelFamily.WithModel("depth")

func init() {
	resource.RegisterComponent(
		sensor.API,
		depthSensor,
		resource.Registration[sensor.Sensor, resource.NoNativeConfig]{
			Constructor: newDepthSensor,
		})
}

func AddDepthSensor(m CANMessage, conf *config.Config) (*resource.Config, error) {
	for _, c := range conf.Components {
		if c.Model == depthSensor {
			return nil, nil
		}
	}

	attr := utils.AttributeMap{
		"pgn": m.Pgn,
	}

	return &resource.Config{
		Name:       "depth",
		API:        sensor.API,
		Model:      depthSensor,
		Attributes: attr,
	}, nil
}

func newDepthSensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger golog.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.Reader(config.Attributes.String("reader"))
	if err != nil {
		return nil, err
	}

	g := &depthData{name: config.ResourceName(), sources: map[int]CANMessage{}}

	r.AddCallback(config.Attributes.Int("pgn", -2), func(m CANMessage) error {
		g.sources[m.Src] = m
		return nil
	})

	return g, nil
}

type depthData struct {
	resource.AlwaysRebuild
	name    resource.Name
	sources map[int]CANMessage
}

func (g *depthData) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {
	m := map[string]interface{}{}

	// for now we're going to pick the shallowed reading over the last minute

	depthValid := false
	realDepth := 10000000.0

	for _, m := range g.sources {
		if time.Since(m.Created) > time.Minute {
			continue
		}
		depthValid = true

		depth, ok := m.Fields["Depth"].(float64)
		if !ok {
			continue
		}

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
