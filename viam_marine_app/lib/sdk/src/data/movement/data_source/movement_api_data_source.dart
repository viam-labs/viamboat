import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pbgrpc.dart';

class ViamMovementDataSource {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;

  ViamMovementDataSource(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
  );

  Future<GetPositionResponse> getPositionData(
    ResourceName resourceName,
  ) async {
    final locationClient = MovementSensorServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

    var locationRequest = GetPositionRequest();
    locationRequest.name = resourceName.name;

    var response = await locationClient.getPosition(locationRequest);
    return response;
  }

  Future<GetLinearVelocityResponse> getLinearVelocity(ResourceName resourceName) async {
    final stub = MovementSensorServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

    final GetLinearVelocityRequest request = GetLinearVelocityRequest(
      name: resourceName.name,
    );

    return stub.getLinearVelocity(request);
  }
}
