package viamboat

import (
	"context"
	"fmt"
	"maps"
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

func AddBoatsensor(category string, m CANMessage, conf *config.Config, src string) (*resource.Config, error) {
	for _, c := range conf.Components {
		if boatsensorEquals(m, c) {
			return nil, nil
		}
	}

	attr := utils.AttributeMap{
		"pgn":      m.Pgn,
		"src":      m.Src,
		"category": category,
		"reader":   src,
	}

	name := fmt.Sprintf("%s-%d", category, m.Src)

	c := resource.Config{
		Name:       name,
		API:        sensor.API,
		Model:      BoatSensor,
		Attributes: attr,
	}

	if name == "fluid-88" {
		fmt.Printf("xxxxxx %v\n", m)
	}

	for _, c := range conf.Components {
		if c.Name == name {
			return nil, fmt.Errorf("two sensors with the same name (%s) that don't match", name)
		}
	}

	return &c, nil
}

func boatsensorEquals(m CANMessage, c resource.Config) bool {
	if c.Model != BoatSensor {
		return false
	}

	pgn := c.Attributes.Int("pgn", -2)
	src := c.Attributes.Int("src", -2)

	if m.Pgn != pgn {
		return false
	}

	if src > 0 && src != m.Src {
		return false
	}

	return true
}

func newBoatsensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger logging.Logger) (sensor.Sensor, error) {
	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &boatsensor{name: config.ResourceName()}

	pgn := config.Attributes.Int("pgn", -2)
	pgns := config.Attributes.IntSlice("pgns")
	src := config.Attributes.Int("src", -2)

	cb := func(m CANMessage) error {
		if src > 0 && src != m.Src {
			return nil
		}

		g.lastMessage = m
		g.lastTime = time.Now()
		return nil
	}

	if pgn > 0 {
		r.AddCallback(pgn, cb)
	}
	for _, pgn := range pgns {
		r.AddCallback(pgn, cb)
	}

	g.fieldsToAdd, _ = config.Attributes["fields_to_add"].(map[string]interface{})

	return g, nil
}

type boatsensor struct {
	resource.AlwaysRebuild

	name        resource.Name
	lastMessage CANMessage
	lastTime    time.Time

	fieldsToAdd map[string]interface{}
}

func (g *boatsensor) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {

	m := g.lastMessage.Fields
	if len(g.fieldsToAdd) > 0 {
		m = maps.Clone(m)
		maps.Copy(m, g.fieldsToAdd)
	}
	if m != nil {
		m["_src"] = g.lastMessage.Src
	}
	return fixTypeMapHack(m), tooOld(extra, g.lastTime)
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
