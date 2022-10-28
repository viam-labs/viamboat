import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';
import 'package:viam_marine/sdk/src/domain/sensor/service/sensor_service.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';

class ViamSdkImpl implements ViamSdk {
  final ViamResourceService _resourceService;
  final ViamSensorService _sensorService;

  ViamSdkImpl(
    this._resourceService,
    this._sensorService,
  );

  @override
  Future<List<ViamResourceName>> getResourceNames(
    ResourceSubtypeFilters? subtype,
    ResourceNameFilters? name,
  ) =>
      _resourceService.getResourceNames(
        subtype: subtype,
        name: name,
      );
}
