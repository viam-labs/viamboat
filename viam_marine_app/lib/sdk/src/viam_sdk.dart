import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';
import 'package:viam_marine/sdk/src/domain/app/service/app_service.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_linear_velocity.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';
import 'package:viam_marine/sdk/src/viam_sdk_impl.dart';

abstract class ViamSdk {
  ViamSdk._();

  static Future<ViamSdk> getInstance({
    required String url,
    required int port,
    String? payload,
    required bool secure,
    required bool disableWebRtc,
  }) async =>
      createViam(
        url: url,
        port: port,
        payload: payload,
        secure: secure,
        disableWebRtc: disableWebRtc,
      );

  Future<List<ViamResourceName>> getResourceNames(
    ViamResourceSubtypeFilters? subtype,
    ViamResourceNameFilters? name,
  );

  Future<List<ViamSensorReadings>> getSensorData(List<ViamResourceName> resourceNames, String sensorRequestName);

  Future<ViamPosition> getPositionData(ViamResourceName name);

  Future<ViamCameraFrameData> getCameraFrameData(String cameraName);

  Future<void> getCameraVideo(String cameraName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName);

  Future<ViamLinearVelocity> getLinearVelocity(ViamResourceName resourceName);

  static Future<Credentials> authenticate(
    String authDomain,
    String clientId,
    String? audience,
    String? scheme,
  ) =>
      login(
        authDomain,
        clientId,
        scheme,
        audience,
      );
}

abstract class Viam {
  static Viam instance() => ViamImpl();

  Future<Credentials> authenticate(
    String authDomain,
    String clientId,
    String? audience,
    String? scheme,
  );

  Future<void> connect({
    required String url,
    required int port,
    String? payload,
    required bool secure,
    required bool disableWebRtc,
  });

  ViamAppService get viamAppService;

  ViamResourceService get viamResourceService;
}
