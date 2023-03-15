import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/domain/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';
import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/gen/service/sensors/v1/sensors.pbgrpc.dart';

class ViamSensorService {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;

  ViamSensorService(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
  );

  Future<List<ViamSensorReadings>> getSensorData(
    List<ViamResourceName> resourceNames,
    String sensorRequestName,
  ) async {
    final sensorClient = SensorsServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

    var sensorRequest = GetReadingsRequest();

    sensorRequest.name = sensorRequestName;

    final resourceNamesDto = resourceNames.map<ResourceName>((resource) => resource.toDto()).toList(growable: false);

    final sensorNames = ResourceName(
      name: resourceNamesDto.first.name,
      namespace: resourceNamesDto.first.namespace,
      type: resourceNamesDto.first.type,
      subtype: resourceNamesDto.first.subtype,
    );

    sensorRequest.sensorNames.addAll([sensorNames]);

    var response = await sensorClient.getReadings(sensorRequest);

    return response.readings.map<ViamSensorReadings>((dto) => dto.toDomain()).toList(growable: false);
  }
}
