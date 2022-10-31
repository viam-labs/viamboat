import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';
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
    ViamResourceSubtypeFilters? subtype,
    ViamResourceNameFilters? name,
  ) =>
      _resourceService.getResourceNames(
        subtype: subtype,
        name: name,
      );

  @override
  Future<List<ViamSensorReadings>> getSensorData(List<ViamResourceName> resourceNames, String sensorRequestName) =>
      _sensorService.getSensorData(
        resourceNames,
        sensorRequestName,
      );
}
