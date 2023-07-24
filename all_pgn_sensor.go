package viamboat

import (
	"context"
	"fmt"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/resource"
)

var AllPgnSensorModel = resource.DefaultModelFamily.WithModel("boat-all-pgn")

func init() {
	resource.RegisterComponent(
		sensor.API,
		AllPgnSensorModel,
		resource.Registration[sensor.Sensor, resource.NoNativeConfig]{
			Constructor: newAllPgnSensor,
		})
}

func newAllPgnSensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger golog.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &allPgnSensor{
		name:     config.ResourceName(),
		messages: map[string]CANMessage{},
	}

	r.AddCallback(-1, func(m CANMessage) error {
		key := fmt.Sprintf("%d-%d", m.Pgn, m.Src)

		instance, has := m.Fields["Instance"]
		if has {
			key = fmt.Sprintf("%s-%v", key, instance)
		}

		g.messages[key] = m
		return nil
	})

	return g, nil
}

type allPgnSensor struct {
	resource.AlwaysRebuild

	name resource.Name

	messages map[string]CANMessage
}

func (g *allPgnSensor) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {
	m := map[string]interface{}{}

	for k, v := range g.messages {
		m2 := map[string]interface{}{}
		m2["pgn"] = v.Pgn
		m2["src"] = v.Src
		m2["timestamp"] = v.Timestamp
		m2["description"] = v.Description
		for kk, vv := range v.Fields {
			m2[kk] = vv
		}
		m[k] = m2
	}

	return m, nil
}

func (g *allPgnSensor) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}

func (g *allPgnSensor) Close(ctx context.Context) error {
	return nil
}

func (g *allPgnSensor) Name() resource.Name {
	return g.name
}
