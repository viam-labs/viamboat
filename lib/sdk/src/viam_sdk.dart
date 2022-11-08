import 'package:viam_marine/sdk/src/di/di.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';

abstract class ViamSdk {
  factory ViamSdk(String url, int port, String? payload) => createViam(
        url,
        port,
        payload,
      );

  Future<List<ViamResourceName>> getResourceNames(
    ViamResourceSubtypeFilters? subtype,
    ViamResourceNameFilters? name,
  );

  Future<List<ViamSensorReadings>> getSensorData(List<ViamResourceName> resourceNames, String sensorRequestName);

  Future<ViamPosition> getPositionData(ViamResourceName name);

  Future<ViamCameraData> getCameraData(String cameraName);
}
