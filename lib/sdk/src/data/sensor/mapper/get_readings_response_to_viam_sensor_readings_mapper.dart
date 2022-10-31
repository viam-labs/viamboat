import 'package:viam_marine/sdk/src/data/viam/sensors/v1/sensors.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';
import 'package:viam_marine/sdk/src/google/protobuf/struct.pb.dart';

class GetReadingsResponseToViamSensorReadingsMapper {
  ViamSensorReadings call(Readings dto) {
    return ViamSensorReadings(
      dto.name.namespace,
      dto.name.type,
      dto.name.subtype,
      dto.name.name,
      _getReadings(dto.readings),
    );
  }

  Map<String, double> _getReadings(Map<String, Value> readings) {
    final Map<String, double> map = {};
    readings.forEach((key, value) => map[key] = value.numberValue);
    return map;
  }
}
