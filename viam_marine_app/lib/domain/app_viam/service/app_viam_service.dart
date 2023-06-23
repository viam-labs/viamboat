import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot_part.dart';

abstract class AppViamService {
  Future<List<ViamAppOrganization>> listOrganizations();

  Future<List<ViamAppLocation>> listLocations(String? organizationId);

  Future<List<ViamAppRobot>> listRobots(String? locationId);

  Future<ViamAppOrganization> getOrganization(String? organizationId);

  Future<ViamAppRobot> getRobot(String? robotId);

  Future<ViamAppLocation> getLocation(String? locationId);

  Future<List<ViamAppRobotPart>> getRobotParts(String robotId);
}
