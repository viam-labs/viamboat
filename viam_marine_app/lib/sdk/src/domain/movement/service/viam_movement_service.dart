import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/domain/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_linear_velocity.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pbgrpc.dart';

class ViamMovementService {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;

  ViamMovementService(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
  );

  Future<ViamPosition> getPositionData(ViamResourceName name) async {
    final locationClient = MovementSensorServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

    var locationRequest = GetPositionRequest();
    final resourceName = name.toDto();
    locationRequest.name = resourceName.name;

    var response = await locationClient.getPosition(locationRequest);

    return response.toDomain();
  }

  Future<ViamLinearVelocity> getLinearVelocity(ViamResourceName name) async {
    final stub = MovementSensorServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

    final resourceName = name.toDto();

    final GetLinearVelocityRequest request = GetLinearVelocityRequest(
      name: resourceName.name,
    );

    final dto = await stub.getLinearVelocity(request);

    final response = dto.toDomain();

    return response;
  }
}
