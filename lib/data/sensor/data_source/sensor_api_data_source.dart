import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/data/viam/sensors/v1/sensors.pbgrpc.dart';

@injectable
class SensorDataSource {
  final ClientChannel _client;

  SensorDataSource(this._client);

  Future<GetReadingsResponse> getSensorData(List<ResourceName> resourcesName) async {
    final sensorClient = SensorsServiceClient(_client);

    var sensorRequest = GetReadingsRequest();
    sensorRequest.name = "builtin";
    final sensorNames = resourcesName
        .where((resourceName) => resourceName.subtype == "sensor" && resourceName.name.startsWith("fluid-"))
        .map((resourceName) => ResourceName(
              name: resourceName.name,
              namespace: resourceName.namespace,
              type: resourceName.type,
              subtype: resourceName.subtype,
            ))
        .toList();
    sensorRequest.sensorNames.addAll([sensorNames.first]);

    var response = await sensorClient.getReadings(sensorRequest);
    return response;
  }
}
