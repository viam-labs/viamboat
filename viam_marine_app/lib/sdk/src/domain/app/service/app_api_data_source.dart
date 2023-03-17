import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/domain/app/model/organization.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_location.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_robot.dart';
import 'package:viam_marine/sdk/src/domain/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';

class ViamAppService {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  ViamAppService(
    this._client,
    this._authHeaderInterceptor,
  );

  Future<List<ViamOrganization>> listOrganizations() async {
    final stub = AppServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final listOrganizationsRequest = ListOrganizationsRequest();

    final ListOrganizationsResponse response = await stub.listOrganizations(listOrganizationsRequest);

    return response.organizations
        .map<ViamOrganization>((organization) => organization.toDomain())
        .toList(growable: false);
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

    return response.locations.map<ViamLocation>((location) => location.toDomain()).toList(growable: false);
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

    return response.robots.map<ViamRobot>((robot) => robot.toDomain()).toList(growable: false);
  }

  Future<ViamOrganization> getOrganizatoin(String? organizationId) async {
    final stub = AppServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final getOrganizationRequest = GetOrganizationRequest(organizationId: organizationId);

    final GetOrganizationResponse response = await stub.getOrganization(getOrganizationRequest);

    return response.organization.toDomain();
  }
}
