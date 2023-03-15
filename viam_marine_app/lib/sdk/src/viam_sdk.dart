import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:viam_marine/sdk/src/data/app/service/app_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/camera/service/camera_api_service.dart';
import 'package:viam_marine/sdk/src/data/movement/service/viam_movement_service.dart';
import 'package:viam_marine/sdk/src/data/resource/service/viam_resource_service.dart';
import 'package:viam_marine/sdk/src/data/sensor/service/viam_sensor_service.dart';

import 'package:viam_marine/sdk/src/viam_sdk_impl.dart';

abstract class Viam {
  static Viam instance() => ViamImpl();

  Future<Credentials> authenticate(
    String authDomain,
    String clientId,
    String? audience,
    String? scheme,
  );

  Future<void> logout(
    String domain,
    String clientId,
    String? scheme,
  );

  Future<void> connect({
    required String url,
    required int port,
    required bool secure,
    required bool disableWebRtc,
    String? payload,
    String? accessToken,
  });

  ViamAppService get viamAppService;

  ViamResourceService get viamResourceService;

  ViamCameraService get viamCameraService;

  ViamMovementService get viamMovementService;

  ViamSensorService get viamSensorService;
}
