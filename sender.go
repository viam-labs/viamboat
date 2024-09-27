package viamboat

import (
	"context"
	"fmt"

	"go.viam.com/rdk/components/generic"
	"go.viam.com/rdk/logging"
	"go.viam.com/rdk/resource"
)

var SenderModel = family.WithModel("sender")

func init() {
	resource.RegisterComponent(
		generic.API,
		SenderModel,
		resource.Registration[resource.Resource, *senderConfig]{
			Constructor: newSender,
		})
}

type senderConfig struct {
	Reader string
	Src    int
}

func (cfg senderConfig) Validate(path string) ([]string, error) {
	return nil, nil
}

func newSender(ctx context.Context, deps resource.Dependencies, config resource.Config, logger logging.Logger) (resource.Resource, error) {
	newConf, err := resource.NativeConfig[*senderConfig](config)
	if err != nil {
		return nil, err
	}

	r, err := GlobalReaderRegistry.GetOrCreate(newConf.Reader, logger)
	if err != nil {
		return nil, err
	}

	return &sender{reader: r, name: config.ResourceName(), config: *newConf, logger: logger}, nil
}

type sender struct {
	resource.AlwaysRebuild

	reader Reader
	name   resource.Name
	config senderConfig
	logger logging.Logger
}

func getInt(m map[string]interface{}, n string) (int, bool) {
	i, ok := m[n]
	if !ok {
		return 0, false
	}

	switch x := i.(type) {
	case int:
		return x, true
	case float64:
		return int(x), true
	}

	return 0, false
}

func (s *sender) createMessage(cmd map[string]interface{}) (*CANMessage, error) {
	pgn, ok := getInt(cmd, "pgn")
	if !ok || pgn <= 0 {
		return nil, fmt.Errorf("need to specify a valid pgn")
	}

	priority, ok := getInt(cmd, "priority")
	if !ok || priority <= 0 || priority > 8 {
		priority = 2
	}

	src, ok := getInt(cmd, "src")
	if !ok {
		src = s.config.Src
	}

	if src <= 0 || src > 255 {
		return nil, fmt.Errorf("need a valid src")
	}

	dst := 255

	fields, ok := cmd["fields"].(map[string]interface{})
	if !ok {
		return nil, fmt.Errorf("need to specify fields")
	}

	return &CANMessage{
		Priority: priority,
		Src:      src,
		Dst:      dst,
		Pgn:      pgn,
		Fields:   fields,
	}, nil

}

func (s *sender) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	msg, err := s.createMessage(cmd)
	if err != nil {
		return nil, err
	}

	err = s.reader.Send(*msg)
	if err != nil {
		return nil, err
	}

	return map[string]interface{}{"sent": true}, nil
}

func (s *sender) Close(ctx context.Context) error {
	return nil
}

func (s *sender) Name() resource.Name {
	return s.name
}
