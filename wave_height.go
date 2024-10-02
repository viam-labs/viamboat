package viamboat

import (
	"context"
	"go.viam.com/rdk/components/sensor"
	"go.viam.com/rdk/config"
	"go.viam.com/rdk/logging"
	"go.viam.com/rdk/resource"
	"go.viam.com/rdk/utils"
	"math"
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

func AddWaveHeightSensor(_ CANMessage, conf *config.Config, src string) (*resource.Config, error) {
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

func newWaveHeightsensor(_ context.Context, _ resource.Dependencies, config resource.Config, logger logging.Logger) (sensor.Sensor, error) {
	r, err := GlobalReaderRegistry.GetOrCreate(config.Attributes.String("reader"), logger)
	if err != nil {
		return nil, err
	}

	g := &waveheightsensor{
		name:   config.ResourceName(),
		data:   make(map[int]*circularBuffer),
		logger: logger,
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
			// assume data readings of 1 minute with a max report of 10 minutes
			// - will report on 1 minute, 5 minute, and 60 minute
			g.data[m.Src] = newCircularBuffer(logger)
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
	logger     logging.Logger
}

func (g *waveheightsensor) tooOld(extra map[string]interface{}) error {
	return tooOld(extra, g.lastUpdate)
}

func (g *waveheightsensor) Readings(_ context.Context, _ map[string]interface{}) (map[string]interface{}, error) {
	retData := make(map[string]interface{})
	retData["lastUpdate"] = g.lastUpdate.Format(time.RFC3339)
	bestSrc := 0
	delta := 0.0
	bestMaxV := 0.0
	bestMinV := 0.0
	for src, data := range g.data {
		minV, maxV := data.GetMinMax()
		if (maxV - minV) > delta {
			bestSrc = src
			delta = maxV - minV
			bestMaxV = maxV
			bestMinV = minV
		}
	}
	retData["maxWaveHeight"] = bestMaxV
	retData["minWaveHeight"] = bestMinV
	retData["diff"] = delta
	retData["Wave1MinuteAvg"] = g.data[bestSrc].Get1MinuteAverage()
	retData["Wave5MinuteAvg"] = g.data[bestSrc].Get5MinuteAverage()
	retData["Wave10MinuteAvg"] = g.data[bestSrc].get10MinuteAverage()

	return retData, nil
}

func (g *waveheightsensor) DoCommand(_ context.Context, _ map[string]interface{}) (map[string]interface{}, error) {
	return map[string]interface{}{}, nil
}

func (g *waveheightsensor) Close(_ context.Context) error {
	return nil
}

func (g *waveheightsensor) Name() resource.Name {
	return g.name
}

type circularBuffer struct {
	buffer       []float64
	lastAltitude float64
	size         int
	current      int
	count        int
	logger       logging.Logger
}

func newCircularBuffer(logger logging.Logger) *circularBuffer {
	return &circularBuffer{
		buffer:       make([]float64, 600),
		lastAltitude: math.NaN(),
		size:         600,
		current:      0,
		count:        0,
		logger:       logger,
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
	c.buffer[c.current] = diff
	c.current = (c.current + 1) % c.size
	if c.count < c.size {
		c.count++
	}
}

func (c *circularBuffer) Values() []float64 {
	if c.count < c.size {
		return c.buffer[:c.count]
	}
	return append(c.buffer[c.current:], c.buffer[:c.current]...)
}

func (c *circularBuffer) GetAverage(lastNElements int) float64 {
	var sum float64
	buf := c.Values()

	if len(buf) <= lastNElements {
		for _, v := range buf {
			sum += v
		}
		return sum / float64(len(buf))
	}
	for _, v := range buf[len(buf)-lastNElements:] {
		sum += v
	}
	return sum / float64(lastNElements)
}

func (c *circularBuffer) Get1MinuteAverage() float64 {
	if c.count == 0 {
		return math.NaN()
	}
	return c.GetAverage(c.size / 10)
}

func (c *circularBuffer) Get5MinuteAverage() float64 {
	if c.count == 0 {
		return math.NaN()
	}
	return c.GetAverage(c.size / 2)
}

func (c *circularBuffer) get10MinuteAverage() float64 {
	if c.count == 0 {
		return math.NaN()
	}
	return c.GetAverage(c.size)
}

func (c *circularBuffer) GetMinMax() (float64, float64) {
	buf := c.Values()
	if len(buf) < 2 {
		return math.NaN(), math.NaN()
	}

	minV, maxV := 0.0, 0.0

	for _, v := range buf {
		if v < minV {
			minV = v
		}
		if v > maxV {
			maxV = v
		}
	}

	return minV, maxV
}
