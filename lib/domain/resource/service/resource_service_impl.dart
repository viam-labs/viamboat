import 'package:viam_marine/data/viam/robot/v1/robot.pbgrpc.dart';

abstract class ResourceService {
  Future<ResourceNamesResponse> getResourceNames();
}
