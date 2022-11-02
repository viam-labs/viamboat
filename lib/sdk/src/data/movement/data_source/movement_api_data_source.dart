import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pbgrpc.dart';

class ViamMovementDataSource {
  final ClientChannel _client;

  ViamMovementDataSource(this._client);

  Future<GetPositionResponse> getPositionData(
    ResourceName resourceName,
  ) async {
    final locationClient = MovementSensorServiceClient(_client);

    var locationRequest = GetPositionRequest();
    locationRequest.name = resourceName.name;

    var response = await locationClient.getPosition(locationRequest);
    return response;
  }
}
