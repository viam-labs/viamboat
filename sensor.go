package viamboat

import (
	"context"
	"fmt"
	"strings"
	"time"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/utils"
)

var boatSensor = resource.DefaultModelFamily.WithModel("boat-sensor")

func init() {
	resource.RegisterComponent(
		sensor.API,
		boatSensor,
		resource.Registration[sensor.Sensor, resource.NoNativeConfig]{
			Constructor: newBoatsensor,
		})
}

func AddBoatsensor(category string, m CANMessage, conf *config.Config, identityAttribute []string) (*resource.Config, error) {
	for _, c := range conf.Components {
		if boatsensorEquals(m, c, identityAttribute) {
			return nil, nil
		}
	}

	fmt.Printf("need to add %v\n", m)

	attr := utils.AttributeMap{
		"pgn":               m.Pgn,
		"category":          category,
		"identityAttribute": identityAttribute,
	}

	name := category

	for _, a := range identityAttribute {
		attr[a] = m.Fields[a]
		name = fmt.Sprintf("%s-%s", name, strings.ReplaceAll(fmt.Sprintf("%v", m.Fields[a]), ".", "_"))
	}

	return &resource.Config{
		Name:       name,
		API:        sensor.API,
		Model:      boatSensor,
		Attributes: attr,
	}, nil
}

func boatsensorEquals(m CANMessage, c resource.Config, identityAttribute []string) bool {
	if c.Model != boatSensor {
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

func newBoatsensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger golog.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.Reader(config.Attributes.String("reader"))
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
	if time.Since(g.lastTime) > time.Minute {
		return nil, fmt.Errorf("boatsensor data too old %v", g.lastTime)
	}
	return g.lastMessage.Fields, nil
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
