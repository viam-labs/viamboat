import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/domain/app/mapper/location_to_viam_location_mapper.dart';
import 'package:viam_marine/sdk/src/domain/app/mapper/organization_to_viam_organization_mapper.dart';
import 'package:viam_marine/sdk/src/domain/app/mapper/robot_to_viam_robot_mapper.dart';
import 'package:viam_marine/sdk/src/domain/app/model/organization.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_location.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_robot.dart';
import 'package:viam_marine/sdk/src/domain/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';

class ViamAppService {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final OrganizationToViamOrganizationMapper _organizationToViamOrganizationMapper;
  final LocationToViamLocationMapper _locationToViamLocationMapper;
  final RobotToViamRobotMapper _robotToViamRobotMapper;

  ViamAppService(
    this._client,
    this._authHeaderInterceptor,
    this._organizationToViamOrganizationMapper,
    this._locationToViamLocationMapper,
    this._robotToViamRobotMapper,
  );

  Future<List<ViamOrganization>> listOrganizations() async {
    final stub = AppServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final listOrganizationsRequest = ListOrganizationsRequest();

    final ListOrganizationsResponse response = await stub.listOrganizations(listOrganizationsRequest);

    return response.organizations.map<ViamOrganization>(_organizationToViamOrganizationMapper).toList(growable: false);
  }

  Future<List<ViamLocation>> listLocations(String? organizationId) async {
    final stub = AppServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final listLocationsRequest = ListLocationsRequest(
      organizationId: organizationId,
    );

    final ListLocationsResponse response = await stub.listLocations(listLocationsRequest);

    return response.locations.map<ViamLocation>(_locationToViamLocationMapper).toList(growable: false);
  }

  Future<List<ViamRobot>> listRobots(String? locationId) async {
    final stub = AppServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final listRobotsRequest = ListRobotsRequest(
      locationId: locationId,
    );

    final ListRobotsResponse response = await stub.listRobots(listRobotsRequest);

    return response.robots.map<ViamRobot>(_robotToViamRobotMapper).toList(growable: false);
  }
}
