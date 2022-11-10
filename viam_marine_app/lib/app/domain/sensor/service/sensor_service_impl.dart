import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/model/viam_app_sensor_readings.dart';

abstract class SensorService {
  Future<List<ViamAppSensorReadings>> getSensorData(List<ViamAppResourceName> resourceNames);
}
