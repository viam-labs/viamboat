// ignore_for_file: deprecated_member_use

import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_sdk/protos/app/app.dart';

@injectable
class AppViamDataSource {
  final RobotManager _robotManager;

  const AppViamDataSource(this._robotManager);

  Future<List<Organization>> getOrganizations() => _robotManager.directClient.appClient.listOrganizations();

  Future<List<Location>> getLocations(Organization organization) =>
      _robotManager.directClient.appClient.listLocations(organization);

  Future<List<Robot>> getRobots(Location location) async => _robotManager.directClient.appClient.listRobots(location);

  Future<Organization> getOrganization(String organizationId) =>
      _robotManager.directClient.appClient.getOrganization(organizationId);

  Future<Robot> getRobot(String robotId) => _robotManager.directClient.appClient.getRobot(robotId);

  Future<Location> getLocation(String locationId) => _robotManager.directClient.appClient.getLocation(locationId);

  Future<List<RobotPart>> getRobotParts(Robot robot) => _robotManager.directClient.appClient.listRobotParts(robot);
}
