package viamboat

import (
	"context"
	"fmt"
	"time"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/registry"
	"go.viam.com/rdk/resource"
)

const GenericModel = "boat-sensor"

func init() {
	registry.RegisterComponent(
		sensor.Subtype,
		GenericModel,
		registry.Component{Constructor: func(
			ctx context.Context,
			_ registry.Dependencies,
			config config.Component,
			logger golog.Logger,
		) (interface{}, error) {
			return newBoatsensor(ctx, config, logger)
		}})
}

func AddBoatsensor(category string, m CANMessage, conf *config.Config, identityAttribute []string) (*config.Component, error) {
	for _, c := range conf.Components {
		if boatsensorEquals(m, c, identityAttribute) {
			return nil, nil
		}
	}

	fmt.Printf("need to add %v\n", m)

	attr := config.AttributeMap{
		"pgn":               m.Pgn,
		"category":          category,
		"identityAttribute": identityAttribute,
	}

	name := category

	for _, a := range identityAttribute {
		attr[a] = m.Fields[a]
		name = fmt.Sprintf("%s-%v", name, attr[a])
	}

	return &config.Component{
		Name:       name,
		Type:       sensor.SubtypeName,
		Model:      GenericModel,
		Namespace:  resource.ResourceNamespaceRDK,
		Attributes: attr,
	}, nil
}

func boatsensorEquals(m CANMessage, c config.Component, identityAttribute []string) bool {
	if c.Model != GenericModel {
		return false
	}

	if c.Attributes.Int("pgn", -2) != m.Pgn {
		return false
	}

	for _, a := range identityAttribute {
		if m.Fields[a] != c.Attributes[a] {
			return false
		}
	}

	return true
}

func newBoatsensor(ctx context.Context, config config.Component, logger golog.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.Reader(config.Attributes.String("reader"))
	if err != nil {
		return nil, err
	}

	g := &boatsensor{}

	r.AddCallback(config.Attributes.Int("pgn", -2), func(m CANMessage) error {
		if !boatsensorEquals(m, config, config.Attributes.StringSlice("identityAttribute")) {
			return nil
		}
		g.lastMessage = m
		g.lastTime = time.Now()
		return nil
	})

	return g, nil
}

type boatsensor struct {
	lastMessage CANMessage
	lastTime    time.Time
}

func (g *boatsensor)Readings(ctx context.Context) (map[string]interface{}, error) {
	if time.Since(g.lastTime) > time.Minute {
		return nil, fmt.Errorf("boatsensor data too old %v", g.lastTime)
	}
	return g.lastMessage.Fields, nil
}

func (g *boatsensor) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}
