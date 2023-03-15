import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_linear_velocity_response_to_viam_linear_velocity_mapper.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:viam_marine/sdk/src/data/movement/model/viam_linear_velocity.dart';
import 'package:viam_marine/sdk/src/data/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pbgrpc.dart';

class ViamMovementService {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;
  final GetLinearVelocityResponseToViamVelocityMapper _getLinearVelocityResponseToViamVelocityMapper;
  final GetPositionResponseToViamPositionMapper _getPositionResponseToViamPositionMapper;
  final ViamResourceNameToResourceNameMapper _viamResourceNameToResourceNameMapper;

  ViamMovementService(
      this._client,
      this._authHeaderInterceptor,
      this.secure,
      this._getLinearVelocityResponseToViamVelocityMapper,
      this._getPositionResponseToViamPositionMapper,
      this._viamResourceNameToResourceNameMapper);

  Future<ViamPosition> getPositionData(ViamResourceName name) async {
    final locationClient = MovementSensorServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

    var locationRequest = GetPositionRequest();
    final resourceName = _viamResourceNameToResourceNameMapper(name);
    locationRequest.name = resourceName.name;

    var response = await locationClient.getPosition(locationRequest);

    return _getPositionResponseToViamPositionMapper(response);
  }

  Future<ViamLinearVelocity> getLinearVelocity(ViamResourceName name) async {
    final stub = MovementSensorServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

    final resourceName = _viamResourceNameToResourceNameMapper(name);

    final GetLinearVelocityRequest request = GetLinearVelocityRequest(
      name: resourceName.name,
    );

    final dto = await stub.getLinearVelocity(request);

    final response = _getLinearVelocityResponseToViamVelocityMapper(dto);

    return response;
  }
}
