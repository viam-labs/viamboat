package viamboat

import (
	"context"
	"fmt"
	"strconv"
	"sync"
	"time"

	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/logging"
	"go.viam.com/rdk/resource"
)

var AISSensor = family.WithModel("ais")

func init() {
	resource.RegisterComponent(
		sensor.API,
		AISSensor,
		resource.Registration[sensor.Sensor, resource.NoNativeConfig]{
			Constructor: newAISSensor,
		})
}

func getUserId(m CANMessage) (int, error) {
	userId, ok := m.Fields["User ID"]
	if !ok {
		return 0, fmt.Errorf("no User ID field in messed %v", m)
	}

	f, ok := userId.(float64)
	if ok {
		return int(f), nil
	}

	i, ok := userId.(int)
	if ok {
		return i, nil
	}

	s, ok := userId.(string)
	if ok {
		i, err := strconv.Atoi(s)
		if err != nil {

			// hail mail
			f, err = strconv.ParseFloat(s, 64)
			if err == nil && f > 0 && float64(int(f)) == f {
				return int(f), nil
			}

			return 0, fmt.Errorf("cannot parse user id string (%v) %w", s, err)
		}
		return i, nil
	}

	return 0, fmt.Errorf("unknown type for user id %v %T", userId, userId)
}

func newAISSensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger logging.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &aisData{name: config.ResourceName(), created: time.Now(), vessels: map[int]aisDataPoint{}, vesselsInfo: map[int]*aisInfo{}}

	processLocation := func(m CANMessage) error {
		d := aisDataPoint{
			Timestamp: m.Timestamp,
			Created:   m.Created,
		}

		d.UserID, err = getUserId(m)
		if err != nil {
			return err
		}

		d.Location = []interface{}{m.Fields["Latitude"], m.Fields["Longitude"]}
		d.Heading, _ = m.Fields["Heading"].(float64)
		d.COG, _ = m.Fields["COG"].(float64)
		d.SOG, _ = m.Fields["SOG"].(float64)

		g.mu.Lock()
		defer g.mu.Unlock()
		g.vessels[d.UserID] = d

		return nil
	}

	r.AddCallback(129038, processLocation)
	r.AddCallback(129039, processLocation)

	processStaticData := func(m CANMessage) error {
		userId, err := getUserId(m)
		if err != nil {
			return err
		}

		g.mu.Lock()
		defer g.mu.Unlock()
		info, ok := g.vesselsInfo[userId]
		if !ok {
			info = &aisInfo{Data: map[string]interface{}{}}
			g.vesselsInfo[userId] = info
		}

		for k, v := range m.Fields {
			info.Data[k] = v
		}

		return nil
	}

	r.AddCallback(129794, processStaticData)
	r.AddCallback(129809, processStaticData)
	r.AddCallback(129810, processStaticData)

	return g, nil
}

type aisDataPoint struct {
	Created   time.Time
	Timestamp CANTimeFormat
	UserID    int
	Location  []interface{}

	Heading float64
	COG     float64
	SOG     float64
}

type aisInfo struct {
	Data map[string]interface{}
}

type aisData struct {
	resource.AlwaysRebuild
	name resource.Name

	created time.Time

	vessels     map[int]aisDataPoint
	vesselsInfo map[int]*aisInfo
	mu          sync.Mutex
}

func (ad *aisData) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {
	m := map[string]interface{}{}

	ad.mu.Lock()
	defer ad.mu.Unlock()

	for user, dp := range ad.vessels {
		if time.Since(dp.Created) > time.Minute*10 {
			continue
		}

		mm := map[string]interface{}{}
		mm["Timestamp"] = dp.Timestamp
		mm["Location"] = dp.Location

		mm["Heading"] = dp.Heading
		mm["COG"] = dp.COG
		mm["SOG"] = dp.SOG

		staticInfo, ok := ad.vesselsInfo[user]
		if ok {
			for kk, vv := range staticInfo.Data {
				mm[kk] = vv
			}
		}

		m[fmt.Sprintf("%d", user)] = fixTypeMapHack(mm)
	}

	m["total"] = len(ad.vessels)
	m["created"] = fmt.Sprintf("%v", ad.created)
	return m, nil
}

func (ad *aisData) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}

func (ad *aisData) Close(ctx context.Context) error {
	return nil
}

func (ad *aisData) Name() resource.Name {
	return ad.name
}
