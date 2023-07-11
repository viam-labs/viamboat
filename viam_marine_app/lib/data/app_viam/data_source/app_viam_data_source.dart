// ignore_for_file: deprecated_member_use

import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_sdk/protos/app/app.dart';

@injectable
class AppViamDataSource {
  final RobotManager _robotManager;

  const AppViamDataSource(this._robotManager);

  Future<List<Organization>> getOrganizations() => _robotManager.directClient.appClient.listOrganizations();

  Future<List<Location>> getLocations(Organization organization) =>
      _robotManager.directClient.appClient.listLocations(organization);

  Future<List<Robot>> getRobots(Location location) async => _robotManager.directClient.appClient.listRobots(location);

  Future<List<RobotPart>> getRobotParts(Robot robot) => _robotManager.directClient.appClient.listRobotParts(robot);
}
