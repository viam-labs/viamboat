import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ResourceDataSource {
  final RobotManager _robotManager;

  ResourceDataSource(this._robotManager);

  List<ResourceName> getResourceNames() => _robotManager.webrtcRobotClient.resourceNames;
}
