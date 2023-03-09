import 'package:viam_marine/sdk/src/data/app/data_source/app_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_to_viam_location_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/organization_to_viam_organization_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/robot_to_viam_robot_mapper.dart';
import 'package:viam_marine/sdk/src/domain/app/model/organization.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_location.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_robot.dart';
import 'package:viam_marine/sdk/src/domain/app/service/app_service.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';

class ViamAppServiceImpl extends ViamAppService {
  final AppApiDataSource _appApiDataSource;
  final OrganizationToViamOrganizationMapper organizationToViamOrganizationMapper;
  final LocationToViamLocationMapper _locationToViamLocationMapper;
  final RobotToViamRobotMapper _robotToViamRobotMapper;

  ViamAppServiceImpl(
    this._appApiDataSource,
    this.organizationToViamOrganizationMapper,
    this._locationToViamLocationMapper,
    this._robotToViamRobotMapper,
  );

  @override
  Future<List<ViamOrganization>> listOrganizations() async {
    final ListOrganizationsResponse dto = await _appApiDataSource.listOrganizations();

    final List<ViamOrganization> organizations =
        dto.organizations.map<ViamOrganization>(organizationToViamOrganizationMapper).toList(growable: false);

    return organizations;
  }

  @override
  Future<List<ViamLocation>> listLocations(String? organizationId) async {
    final ListLocationsResponse dto = await _appApiDataSource.listLocations(organizationId);

    final List<ViamLocation> locations =
        dto.locations.map<ViamLocation>(_locationToViamLocationMapper).toList(growable: false);

    return locations;
  }

  @override
  Future<List<ViamRobot>> listRobots(String? locationId) async {
    final ListRobotsResponse dto = await _appApiDataSource.listRobots(locationId);

    final List<ViamRobot> robots = dto.robots.map<ViamRobot>(_robotToViamRobotMapper).toList(growable: false);

    return robots;
  }
}
