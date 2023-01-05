import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/app/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/app/data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/app/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@Injectable(as: ViamAppSensorService)
class ViamAppSensorServiceImpl implements ViamAppSensorService {
  final SensorDataSource _dataSource;
  final ViamAppResourceNameToViamResourceNameMapper _viamAppResourceNameToViamResourceNameMapper;
  final ViamSensorReadingsToViamAppSensorReadingsMapper _viamSensorReadingsToViamAppSensorReadingsMapper;

  const ViamAppSensorServiceImpl(
    this._dataSource,
    this._viamAppResourceNameToViamResourceNameMapper,
    this._viamSensorReadingsToViamAppSensorReadingsMapper,
  );

  @override
  Future<List<ViamAppSensorReadings>> getSensorData(List<ViamAppResourceName> resourceNames) async {
    final resourceNamesDto =
        resourceNames.map<ViamResourceName>(_viamAppResourceNameToViamResourceNameMapper).toList(growable: false);
    final result = await _dataSource.getSensorData(resourceNamesDto);
    return result.map<ViamAppSensorReadings>(_viamSensorReadingsToViamAppSensorReadingsMapper).toList(growable: false);
  }
}
