import 'package:grpc/grpc.dart';
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/data/viam/sensors/v1/sensors.pbgrpc.dart';

const builtinName = 'builtin';

class ViamSensorDataSource {
  final ClientChannel _client;

  ViamSensorDataSource(this._client);

  Future<GetReadingsResponse> getSensorData(List<ResourceName> resourceNames) async {
    final sensorClient = SensorsServiceClient(_client);

    var sensorRequest = GetReadingsRequest();
    sensorRequest.name = builtinName;
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
