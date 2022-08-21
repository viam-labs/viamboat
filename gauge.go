package viamboat

import (
	"context"
	"fmt"
	"time"

	"github.com/edaniels/golog"

	"go.viam.com/rdk/component/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/registry"
	"go.viam.com/rdk/resource"
)

const GaugeModel = "boat-gauge"

func init() {
	registry.RegisterComponent(
		sensor.Subtype,
		GaugeModel,
		registry.Component{Constructor: func(
			ctx context.Context,
			_ registry.Dependencies,
			config config.Component,
			logger golog.Logger,
		) (interface{}, error) {
			return newGauge(ctx, config, logger)
		}})
}

func AddGauge(m CANMessage, conf *config.Config) (*config.Component, error) {
	instance, got := m.Fields["Instance"]
	if !got {
		return nil, fmt.Errorf("weird gauge, no instance %v", m)
	}

	instanceFloat, ok := instance.(float64)
	if !ok {
		return nil, fmt.Errorf("weird gauge, instance not a float %v %T", instance, instance)
	}

	instanceInt := int(instanceFloat)

	for _, c := range conf.Components {
		if gaugeEquals(m, c) {
			return nil, nil
		}
	}

	fmt.Printf("need to add %v\n", m)

	return &config.Component{
		Name:      fmt.Sprintf("guage-%s-%d", m.Fields["Type"], instanceInt),
		Type:      sensor.SubtypeName,
		Model:     GaugeModel,
		Namespace: resource.ResourceNamespaceRDK,
		Attributes: config.AttributeMap{
			"instance": instanceInt,
			"type":     m.Fields["Type"],
			"pgn":      m.Pgn,
		},
	}, nil
}

func gaugeEquals(m CANMessage, c config.Component) bool {
	return c.Model == GaugeModel &&
		c.Attributes.String("type") == m.Fields["Type"] &&
		c.Attributes.Int("instance", -1) == int(m.Fields["Instance"].(float64))
}

func newGauge(ctx context.Context, config config.Component, logger golog.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.Reader(config.Attributes.String("reader"))
	if err != nil {
		return nil, err
	}

	g := &gauge{}

	r.AddCallback(config.Attributes.Int("pgn", -2), func(m CANMessage) error {
		if !gaugeEquals(m, config) {
			return nil
		}
		g.lastMessage = m
		g.lastTime = time.Now()
		return nil
	})

	return g, nil
}

type gauge struct {
	lastMessage CANMessage
	lastTime    time.Time
}

func (g *gauge) GetReadings(ctx context.Context) (map[string]interface{}, error) {
	if time.Since(g.lastTime) > time.Minute {
		return nil, fmt.Errorf("gauge data too old %v", g.lastTime)
	}
	return g.lastMessage.Fields, nil
}

func (g *gauge) Do(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}
