import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/data/viam/sensors/v1/sensors.pbgrpc.dart';
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart';

@Injectable(as: SensorService)
class SensorServiceImpl implements SensorService {
  final SensorDataSource _dataSource;

  const SensorServiceImpl(this._dataSource);

  @override
  Future<GetReadingsResponse> getSensorData(List<ResourceName> resourceNames) {
    return _dataSource.getSensorData(resourceNames);
  }
}
