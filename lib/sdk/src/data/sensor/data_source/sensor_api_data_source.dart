import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/sensors/v1/sensors.pbgrpc.dart';

class ViamSensorDataSource {
  final ClientChannel _client;

  ViamSensorDataSource(this._client);

  Future<GetReadingsResponse> getSensorData(
    List<ResourceName> resourceNames,
    String sensorRequestName,
  ) async {
    final sensorClient = SensorsServiceClient(_client);

    var sensorRequest = GetReadingsRequest();
    sensorRequest.name = sensorRequestName;
    final sensorNames = ResourceName(
      name: resourceNames.first.name,
      namespace: resourceNames.first.namespace,
      type: resourceNames.first.type,
      subtype: resourceNames.first.subtype,
    );
    sensorRequest.sensorNames.addAll([sensorNames]);

    var response = await sensorClient.getReadings(sensorRequest);
    return response;
  }
}
