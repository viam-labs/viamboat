package viamboat

import (
	"fmt"
	"strings"
	"time"

	"go.viam.com/rdk/data"
	"go.viam.com/rdk/resource"

	"github.com/erh/gonmea/common"
)

var family = resource.ModelNamespace("viam-labs").WithFamily("viamboat")

func isFromDataCapture(extra map[string]interface{}) bool {
	if extra == nil {
		return false
	}

	return extra[data.FromDMString] == true
}

func tooOld(extra map[string]interface{}, lastUpdate time.Time) error {
	if time.Since(lastUpdate) < time.Minute {
		return nil
	}

	if isFromDataCapture(extra) {
		// we're from data capture
		// since data is too old, just don't store anything or log
		return data.ErrNoCaptureToStore
	}

	return fmt.Errorf("lastUpdate update too old: %v (%v)", lastUpdate, extra)
}

func fixTypeHack(v interface{}) interface{} {
	if v == nil {
		return v
	}

	switch vv := v.(type) {

	case time.Duration:
		return fmt.Sprintf("%v", vv)

	case CANTimeFormat:
		return fmt.Sprintf("%s", vv.String())

	case time.Time:
		return fmt.Sprintf("%s", vv.Format(time.RFC822Z))

	case string:
		x := strings.ToValidUTF8(vv, "")
		if x == v {
			return v
		}
		return fmt.Sprintf("invalid-utf8 fixed: %s", x)

	case float64:
	case int:
	case []uint8:
		return v

	case []interface{}:
		for idx, vvv := range vv {
			vv[idx] = fixTypeHack(vvv)
		}
		return vv

	case map[string]interface{}:
		for k, vvv := range vv {
			vv[k] = fixTypeHack(vvv)
		}
		return vv

	case common.FieldVariable:
		return fixTypeHack(vv.Value)

	default:
		fmt.Printf("unknown type %T, danger! - %v\n", v, v)
	}

	return v
}

func fixTypeMapHack(m map[string]interface{}) map[string]interface{} {
	m2 := map[string]interface{}{}
	for k, v := range m {
		m2[k] = fixTypeHack(v)
	}
	return m2
}
