import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/app_viam/data_source/app_viam_data_source.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/domain/app_viam/service/app_viam_service.dart';
import 'package:viam_sdk/viam_sdk.dart';

@LazySingleton(as: AppViamService)
class AppViamServiceImpl extends AppViamService {
  final AppViamDataSource _appViamDataSource;
  AppViamServiceImpl(
    this._appViamDataSource,
  );

  @override
  Future<List<ViamAppOrganization>> listOrganizations() async {
    final List<ViamOrganization> dto = await _appViamDataSource.listOrganizations();

    final List<ViamAppOrganization> organizations =
        dto.map<ViamAppOrganization>((organization) => organization.toDomain()).toList(growable: false);

    return organizations;
  }

  @override
  Future<List<ViamAppLocation>> listLocations(String? organizationId) async {
    final List<ViamLocation> dto = await _appViamDataSource.listLocations(organizationId);

    final List<ViamAppLocation> locations =
        dto.map<ViamAppLocation>((location) => location.toDomain()).toList(growable: false);

    return locations;
  }

  @override
  Future<List<ViamAppRobot>> listRobots(String? locationId) async {
    final List<ViamRobot> dto = await _appViamDataSource.listRobots(locationId);

    final List<ViamAppRobot> robots = dto.map<ViamAppRobot>((robot) => robot.toDomain()).toList(growable: false);

    return robots;
  }

  @override
  Future<ViamAppOrganization> getOrganization(String? organizationId) async {
    final ViamOrganization dto = await _appViamDataSource.getOrganization(organizationId);

    return dto.toDomain();
  }

  @override
  Future<ViamAppRobot> getRobot(String? robotId) async {
    final ViamRobot dto = await _appViamDataSource.getRobot(robotId);

    return dto.toDomain();
  }

  @override
  Future<ViamAppLocation> getLocation(String? locationId) async {
    final ViamLocation dto = await _appViamDataSource.getLocation(locationId);

    return dto.toDomain();
  }
}
