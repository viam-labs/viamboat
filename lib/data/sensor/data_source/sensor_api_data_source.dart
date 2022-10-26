import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/data/viam/sensors/v1/sensors.pbgrpc.dart';

const builtinName = 'builtin';

@injectable
class SensorDataSource {
  final ClientChannel _client;

  SensorDataSource(this._client);

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
