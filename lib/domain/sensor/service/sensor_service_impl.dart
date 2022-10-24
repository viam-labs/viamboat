import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/data/viam/sensors/v1/sensors.pbgrpc.dart';

abstract class SensorService {
  Future<GetReadingsResponse> getSensorData(List<ResourceName> resourcesName);
}
