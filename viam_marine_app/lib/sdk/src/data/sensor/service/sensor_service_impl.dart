import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/sensor/mapper/get_readings_response_to_viam_sensor_readings_mapper.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';
import 'package:viam_marine/sdk/src/domain/sensor/service/sensor_service.dart';

class ViamSensorServiceImpl implements ViamSensorService {
  final ViamSensorDataSource _dataSource;
  final GetReadingsResponseToViamSensorReadingsMapper _getReadingsResponseToViamSensorReadingsMapper;
  final ViamResourceNameToResourceNameMapper _viamResourceNameToResourceNameMapper;

  const ViamSensorServiceImpl(
    this._dataSource,
    this._getReadingsResponseToViamSensorReadingsMapper,
    this._viamResourceNameToResourceNameMapper,
  );

  @override
  Future<List<ViamSensorReadings>> getSensorData(List<ViamResourceName> resourceNames, String sensorRequestName) async {
    final resourceNamesDto =
        resourceNames.map<ResourceName>(_viamResourceNameToResourceNameMapper).toList(growable: false);
    final result = await _dataSource.getSensorData(
      resourceNamesDto,
      sensorRequestName,
    );
    return result.readings
        .map<ViamSensorReadings>(_getReadingsResponseToViamSensorReadingsMapper)
        .toList(growable: false);
  }
}
