import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ResourceDataSource {
  final RobotManager _robotManager;

  ResourceDataSource(this._robotManager);

  List<ResourceName> getResourceNames() => _robotManager.webrtcRobotClient.resourceNames;
}
