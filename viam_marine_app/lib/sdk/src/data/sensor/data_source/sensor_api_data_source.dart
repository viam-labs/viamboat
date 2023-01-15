import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/sensors/v1/sensors.pbgrpc.dart';

class ViamSensorDataSource {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;

  ViamSensorDataSource(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
  );

  Future<GetReadingsResponse> getSensorData(
    List<ResourceName> resourceNames,
    String sensorRequestName,
  ) async {
    final sensorClient = SensorsServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );

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
