import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/app_viam/data_source/app_viam_data_source.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot_part.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_sdk/protos/app/app.dart';

@LazySingleton(as: AppViamService)
class AppViamServiceImpl extends ServiceBase implements AppViamService {
  final AppViamDataSource _appViamDataSource;

  AppViamServiceImpl(
    super.tokenExpiredBroadcaster,
    this._appViamDataSource,
  );

  @override
  Future<List<ViamAppOrganization>> getOrganizations() async {
    final List<Organization> dto = await super(() => _appViamDataSource.getOrganizations());

    final List<ViamAppOrganization> organizations =
        dto.map<ViamAppOrganization>((organization) => organization.toDomain()).toList(growable: false);

    return organizations;
  }

  @override
  Future<List<ViamAppLocation>> getLocations(ViamAppOrganization organization) async {
    final Organization organizationDto = organization.toDto();
    final List<Location> dto = await super(() => _appViamDataSource.getLocations(organizationDto));

    final List<ViamAppLocation> locations =
        dto.map<ViamAppLocation>((location) => location.toDomain()).toList(growable: false);

    return locations;
  }

  @override
  Future<List<ViamAppRobot>> getRobots(ViamAppLocation location) async {
    final Location locationDto = location.toDto();
    final List<Robot> dto = await super(() => _appViamDataSource.getRobots(locationDto));

    final List<ViamAppRobot> robots = dto.map<ViamAppRobot>((robot) => robot.toDomain()).toList(growable: false);

    return robots;
  }

  @override
  Future<ViamAppOrganization> getOrganization(String organizationId) async {
    final Organization dto = await super(() => _appViamDataSource.getOrganization(organizationId));

    return dto.toDomain();
  }

  @override
  Future<ViamAppRobot> getRobot(String robotId) async {
    final Robot dto = await super(() => _appViamDataSource.getRobot(robotId));

    return dto.toDomain();
  }

  @override
  Future<ViamAppLocation> getLocation(String locationId) async {
    final Location dto = await super(() => _appViamDataSource.getLocation(locationId));

    return dto.toDomain();
  }

  @override
  Future<List<ViamAppRobotPart>> getRobotParts(ViamAppRobot robot) async {
    final Robot robotDto = robot.toDto();
    final List<RobotPart> dto = await super(() => _appViamDataSource.getRobotParts(robotDto));

    final List<ViamAppRobotPart> robots =
        dto.map<ViamAppRobotPart>((robot) => robot.toDomain()).toList(growable: false);

    return robots;
  }
}
