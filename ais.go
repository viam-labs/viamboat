package viamboat

import (
	"context"
	"fmt"
	"sync"
	"time"

	"github.com/edaniels/golog"
	geo "github.com/kellydunn/golang-geo"

	"go.viam.com/rdk/components/sensor"
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
	rawUserId, ok := m.Fields["User ID"].(float64)
	if !ok {
		return 0, fmt.Errorf("no User Id %v", m)
	}
	return int(rawUserId), nil
}

func newAISSensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger golog.Logger) (sensor.Sensor, error) {

	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &aisData{name: config.ResourceName(), vessels: map[int]aisDataPoint{}, vesselsInfo: map[int]*aisInfo{}}

	processLocation := func(m CANMessage) error {
		d := aisDataPoint{
			Timestamp: m.Timestamp,
			Created:   m.Created,
		}

		d.UserID, err = getUserId(m)
		if err != nil {
			return err
		}

		d.Location = geo.NewPoint(m.Fields["Latitude"].(float64), m.Fields["Longitude"].(float64))
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
			info = &aisInfo{}
			g.vesselsInfo[userId] = info
		}

		cs, ok := m.Fields["Callsign"].(string)
		if ok {
			info.Callsign = cs
		}

		n, ok := m.Fields["Name"].(string)
		if ok {
			info.Name = n
		}

		l, ok := m.Fields["Length"].(float64)
		if ok {
			info.Length = l
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
	Timestamp string
	UserID    int
	Location  *geo.Point

	Heading float64
	COG     float64
	SOG     float64
}

type aisInfo struct {
	Callsign string
	Name     string
	Length   float64
}

type aisData struct {
	resource.AlwaysRebuild
	name resource.Name

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
			fmt.Printf("skipping %v\n", user)
			//continue
		}

		mm := map[string]interface{}{}
		mm["Timestamp"] = dp.Timestamp
		mm["Location"] = []interface{}{dp.Location.Lat(), dp.Location.Lng()}

		mm["Heading"] = dp.Heading
		mm["COG"] = dp.COG
		mm["SOG"] = dp.SOG

		staticInfo, ok := ad.vesselsInfo[user]
		if ok {
			mm["Callsign"] = staticInfo.Callsign
			mm["Name"] = staticInfo.Name
			mm["Length"] = staticInfo.Length
		}

		m[fmt.Sprintf("%d", user)] = mm
	}

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
