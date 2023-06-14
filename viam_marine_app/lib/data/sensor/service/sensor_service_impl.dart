import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/data/sensor/model/sensor_readings_dto.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';

@Injectable(as: ViamAppSensorService)
class ViamAppSensorServiceImpl extends ServiceBase implements ViamAppSensorService {
  final SensorDataSource _dataSource;

  const ViamAppSensorServiceImpl(
    super.tokenExpiredBroadcaster,
    this._dataSource,
  );

  @override
  Future<ViamAppSensorReadings> getSensorData(ViamAppResourceName resourceName) async {
    final resourceNamesDto = resourceName.toDto();
    final dto = await super<SensorReadingsDto>(
      () => _dataSource.getSensorData(resourceNamesDto),
    );

    final d = dto.toDomain();

    return d;
  }
}
