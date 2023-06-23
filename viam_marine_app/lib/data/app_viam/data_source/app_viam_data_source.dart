import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class AppViamDataSource {
  final RobotManager _robotManager;

  const AppViamDataSource(this._robotManager);

  Future<List<ViamOrganization>> listOrganizations() => _robotManager.appViamClient.viamAppService.listOrganizations();

  Future<List<ViamLocation>> listLocations(String? organizationId) =>
      _robotManager.appViamClient.viamAppService.listLocations(organizationId);

  Future<List<ViamRobot>> listRobots(String? locationId) async =>
      _robotManager.appViamClient.viamAppService.listRobots(locationId);

  Future<ViamOrganization> getOrganization(String? organizationId) =>
      _robotManager.appViamClient.viamAppService.getOrganizatoin(organizationId);

  Future<ViamRobot> getRobot(String? robotId) => _robotManager.appViamClient.viamAppService.getRobot(robotId);

  Future<ViamLocation> getLocation(String? locationId) =>
      _robotManager.appViamClient.viamAppService.getLocation(locationId);

  Future<List<ViamRobotPart>> getRobotParts(String robotId) =>
      _robotManager.appViamClient.viamAppService.getRobotParts(robotId);
}
