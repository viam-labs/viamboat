package viamboat

import (
	"context"
	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/logging"
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/utils"
	"math"
	"strconv"
	"sync"
	"time"
)

var WaveHeightSensor = family.WithModel("wave-height-sensor")

func init() {
	resource.RegisterComponent(
		sensor.API,
		WaveHeightSensor,
		resource.Registration[sensor.Sensor, resource.NoNativeConfig]{
			Constructor: newWaveHeightsensor,
		})
}

func AddWaveHeightSensor(m CANMessage, conf *config.Config, src string) (*resource.Config, error) {
	for _, c := range conf.Components {
		if c.Model == WaveHeightSensor {
			return nil, nil
		}
	}

	attr := utils.AttributeMap{
		"reader": src,
	}

	c := resource.Config{
		Name:       "wave",
		API:        sensor.API,
		Model:      WaveHeightSensor,
		Attributes: attr,
	}

	return &c, nil
}

func newWaveHeightsensor(ctx context.Context, deps resource.Dependencies, config resource.Config, logger logging.Logger) (sensor.Sensor, error) {
	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &waveheightsensor{
		name: config.ResourceName(),
		data: make(map[int]*circularBuffer),
	}

	srcFilter := createSrcFilter(config.Attributes)

	r.AddCallback(129029, func(m CANMessage) error {
		if !srcFilter.Good(m) {
			return nil
		}

		g.mu.Lock()
		defer g.mu.Unlock()

		altitude, ok := m.Fields["Altitude"].(float64)
		if !ok {
			return nil
		}

		geoidal, ok := m.Fields["Geoidal Separation"].(float64)
		if !ok {
			return nil
		}

		if _, exists := g.data[m.Src]; !exists {
			// assume data readings of 1 a second
			g.data[m.Src] = newCircularBuffer(60)
		}
		g.data[m.Src].Add(altitude - geoidal)
		return nil
	})

	return g, nil
}

type waveheightsensor struct {
	resource.AlwaysRebuild
	name       resource.Name
	mu         sync.Mutex
	lastUpdate time.Time
	data       map[int]*circularBuffer
}

func (g *waveheightsensor) tooOld(extra map[string]interface{}) error {
	return tooOld(extra, g.lastUpdate)
}

func (g *waveheightsensor) Readings(ctx context.Context, extra map[string]interface{}) (map[string]interface{}, error) {
	retData := make(map[string]interface{})
	retData["lastUpdate"] = g.lastUpdate.Format(time.RFC3339)
	retData["TimeInterval"] = 1
	for src, data := range g.data {
		srcStr := strconv.Itoa(src)
		minV, maxV := data.GetMinMax()
		srcData := make(map[string]interface{})
		srcData["heightAvg"] = data.GetAverage()
		srcData["heightMin"] = minV
		srcData["heightMax"] = maxV
		srcData["count"] = float64(data.count)

		retData[srcStr] = srcData
	}
	return retData, nil
}

func (g *waveheightsensor) DoCommand(ctx context.Context, cmd map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}

func (g *waveheightsensor) Close(ctx context.Context) error {
	return nil
}

func (g *waveheightsensor) Name() resource.Name {
	return g.name
}

type circularBuffer struct {
	buffer       []float64
	lastAltitude float64
	size         int
	index        int
	count        int
}

func newCircularBuffer(size int) *circularBuffer {
	return &circularBuffer{
		buffer:       make([]float64, size),
		lastAltitude: math.NaN(),
		size:         size,
		index:        0,
	}
}

func (c *circularBuffer) Add(value float64) {
	if math.IsNaN(value) {
		// do nothing bad reading
		return
	}

	// if last_altitude is non a number we have not added anything
	// to this buffer
	if math.IsNaN(c.lastAltitude) {
		c.lastAltitude = value
		return
	}
	diff := value - c.lastAltitude
	c.lastAltitude = value
	c.buffer[c.index] = diff
	c.index = (c.index + 1) % c.size
	if c.count < c.size {
		c.count++
	}
}

func (c *circularBuffer) GetAverage() float64 {
	if c.count == 0 {
		return math.NaN()
	}

	var sum float64
	for _, v := range c.buffer {
		sum += v
	}
	return sum / float64(c.count)
}

func (c *circularBuffer) GetMinMax() (float64, float64) {
	if len(c.buffer) < 2 {
		return math.NaN(), math.NaN()
	}

	minV, maxV := c.buffer[0], c.buffer[0]

	for _, v := range c.buffer {
		if v < minV {
			minV = v
		}
		if v > maxV {
			maxV = v
		}
	}

	return minV, maxV
}
