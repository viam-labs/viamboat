import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';

abstract class ViamSensorService {
  Future<List<ViamSensorReadings>> getSensorData(
    List<ViamResourceName> resourceNames,
    String sensorRequestName,
  );
}
