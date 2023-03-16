import 'package:viam_marine/app/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';

abstract class AppViamService {
  Future<List<ViamAppOrganization>> listOrganizations();

  Future<List<ViamAppLocation>> listLocations(String? organizationId);

  Future<List<ViamAppRobot>> listRobots(String? locationId);

  Future<ViamAppOrganization> getOrganization(String? organizationId);

  Future<ViamAppRobot> getRobot(String? robotId);
}
