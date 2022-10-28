
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/data/viam/sensors/v1/sensors.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/sdk/src/domain/sensor/service/sensor_service.dart';

class ViamSensorServiceImpl implements ViamSensorService {
  final ViamSensorDataSource _dataSource;

  const ViamSensorServiceImpl(this._dataSource);

  @override
  Future<GetReadingsResponse> getSensorData(List<ResourceName> resourceNames) {
    return _dataSource.getSensorData(resourceNames);
  }
}
