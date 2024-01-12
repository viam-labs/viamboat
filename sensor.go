package viamboat

import (
	"context"
	"fmt"
	"strings"
	"time"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/logging"
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/utils"
)

var BoatSensor = family.WithModel("boat-sensor")

func init() {
	resource.RegisterComponent(
		sensor.API,
		BoatSensor,
		resource.Registration[sensor.Sensor, resource.NoNativeConfig]{
			Constructor: newBoatsensor,
		})
}

func AddBoatsensor(category string, m CANMessage, conf *config.Config, src string, identityAttribute []string, useSrcInName bool) (*resource.Config, error) {
	for _, c := range conf.Components {
		if boatsensorEquals(m, c, identityAttribute) {
			return nil, nil
		}
	}

	attr := utils.AttributeMap{
		"pgn":               m.Pgn,
		"src":               m.Src,
		"category":          category,
		"identityAttribute": identityAttribute,
		"reader":            src,
	}

	name := category

	for _, a := range identityAttribute {
		attr[a] = m.Fields[a]
		name = fmt.Sprintf("%s-%s", name, strings.ReplaceAll(fmt.Sprintf("%v", m.Fields[a]), ".", "_"))
	}

	if useSrcInName {
		name = fmt.Sprintf("%s-%d", name, m.Src)
	}

	for _, c := range conf.Components {
		if c.Name == name {
			return nil, fmt.Errorf("two sensors with the same name (%s) that don't match", name)
		}
	}

	return &resource.Config{
		Name:       name,
		API:        sensor.API,
		Model:      BoatSensor,
		Attributes: attr,
	}, nil
}

func boatsensorEquals(m CANMessage, c resource.Config, identityAttribute []string) bool {
	if c.Model != BoatSensor {
		return false
	}

	if c.Attributes.Int("pgn", -2) != m.Pgn {
		return false
	}

	src := c.Attributes.Int("src", -2)
	if src >= 0 && src != m.Src {
		return false
	}

	inst := c.Attributes.Int("instance", -2)
	if inst >= 0 && inst != c.Attributes["Instance"] {
		return false
	}

	for _, a := range identityAttribute {
		if m.Fields[a] != c.Attributes[a] {
			return false
		}
	}

	return true
}

func newBoatsensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger logging.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &boatsensor{name: config.ResourceName()}

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
	resource.AlwaysRebuild

	name        resource.Name
	lastMessage CANMessage
	lastTime    time.Time
}

func (g *boatsensor) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {
	return g.lastMessage.Fields, tooOld(extra, g.lastTime)
}

func (g *boatsensor) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}

func (g *boatsensor) Close(ctx context.Context) error {
	return nil
}

func (g *boatsensor) Name() resource.Name {
	return g.name
}
