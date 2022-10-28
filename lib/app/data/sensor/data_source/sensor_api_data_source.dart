import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/app/data/viam/sensors/v1/sensors.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const builtinName = 'builtin';

@injectable
class SensorDataSource {
  final ViamSdk _viamSdk;

  SensorDataSource(this._viamSdk);

  Future<GetReadingsResponse> getSensorData(List<ResourceName> resourceNames) async {
    await _viamSdk.getResourceNames(ResourceSubtypeFilters.sensor, ResourceNameFilters.fluid);
    return GetReadingsResponse();

    // final sensorClient = SensorsServiceClient(_client);
    //
    // var sensorRequest = GetReadingsRequest();
    // sensorRequest.name = builtinName;
    // final sensorNames = ResourceName(
    //   name: resourceNames.first.name,
    //   namespace: resourceNames.first.namespace,
    //   type: resourceNames.first.type,
    //   subtype: resourceNames.first.subtype,
    // );
    // sensorRequest.sensorNames.addAll([sensorNames]);
    //
    // var response = await sensorClient.getReadings(sensorRequest);
    // return response;
  }
}
