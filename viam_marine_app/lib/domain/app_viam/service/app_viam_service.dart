import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot_part.dart';

abstract class AppViamService {
  Future<List<ViamAppOrganization>> getOrganizations();

  Future<List<ViamAppLocation>> getLocations(ViamAppOrganization organization);

  Future<List<ViamAppRobot>> getRobots(ViamAppLocation location);

  Future<List<ViamAppRobotPart>> getRobotParts(ViamAppRobot robot);
}
