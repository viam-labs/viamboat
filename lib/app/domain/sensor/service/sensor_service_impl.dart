import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/data/viam/sensors/v1/sensors.pbgrpc.dart';

abstract class SensorService {
  Future<GetReadingsResponse> getSensorData(List<ResourceName> resourceNames);
}
