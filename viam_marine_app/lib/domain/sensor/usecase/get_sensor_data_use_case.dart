import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart';

@injectable
class GetSensorDataUseCase {
  final ViamAppSensorService _sensorService;

  const GetSensorDataUseCase(this._sensorService);

  Future<ViamAppSensorReadings> call(ViamAppResourceName resourceNames) => _sensorService.getSensorData(resourceNames);
}
