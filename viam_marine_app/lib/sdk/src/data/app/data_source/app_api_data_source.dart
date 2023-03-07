import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';

class AppApiDataSource {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  AppApiDataSource(this._client, this._authHeaderInterceptor);

  Future<ListOrganizationsResponse> listOrganizations() async {
    final stub = AppServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final listOrganizationsRequest = ListOrganizationsRequest();

    final ListOrganizationsResponse response = await stub.listOrganizations(listOrganizationsRequest);

    return response;
  }

  Future<ListLocationsResponse> listLocations(String? organizationId) async {
    final stub = AppServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final listLocationsRequest = ListLocationsRequest(
      organizationId: organizationId,
    );

    final ListLocationsResponse response = await stub.listLocations(listLocationsRequest);

    return response;
  }
}
