import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pbgrpc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';

class ViamMovementDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  ViamMovementDataSource(
    this._client,
    this._authHeaderInterceptor,
  );

  Future<GetPositionResponse> getPositionData(
    ResourceName resourceName,
  ) async {
    final locationClient = MovementSensorServiceClient(
      _client,
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    var locationRequest = GetPositionRequest();
    locationRequest.name = resourceName.name;

    var response = await locationClient.getPosition(locationRequest);
    return response;
  }
}
