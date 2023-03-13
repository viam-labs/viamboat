import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/signalling_server_address.dart';
import 'package:viam_marine/sdk/src/di/di.dart';
import 'package:viam_marine/sdk/src/domain/app/service/app_service.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';
import 'package:viam_marine/sdk/src/domain/camera/service/camera_service.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_linear_velocity.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/domain/movement/service/movement_service.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';
import 'package:viam_marine/sdk/src/domain/sensor/service/sensor_service.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';

class ViamSdkImpl implements ViamSdk {
  final ViamResourceService _resourceService;
  final ViamSensorService _sensorService;
  final ViamMovementService _navigationService;
  final ViamCameraService _cameraService;

  ViamSdkImpl(
    this._resourceService,
    this._sensorService,
    this._navigationService,
    this._cameraService,
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

  @override
  Future<ViamPosition> getPositionData(ViamResourceName name) => _navigationService.getPositionData(name);

  @override
  Future<ViamCameraFrameData> getCameraFrameData(String cameraName) => _cameraService.getCameraFrame(cameraName);

  @override
  Future<void> getCameraVideo(String cameraName) => _cameraService.getCameraVideo(cameraName);

  @override
  Stream<MediaStream> subscribeToCameraStream(String cameraName) => _cameraService.subscribeToCameraStream(cameraName);

  @override
  Future<ViamLinearVelocity> getLinearVelocity(ViamResourceName resourceName) =>
      _navigationService.getLinearVelocity(resourceName);
}

class ViamImpl implements Viam {
  ViamAppService? appService;
  ViamResourceService? resourceService;
  ClientChannelBase? _clientChannelBase;
  ViamCameraService? cameraService;
  ViamMovementService? movementService;
  ViamSensorService? sensorService;

  @override
  Future<Credentials> authenticate(String authDomain, String clientId, String? audience, String? scheme) => login(
        authDomain,
        clientId,
        scheme,
        audience,
      );

  @override
  Future<void> connect({
    required String url,
    required int port,
    required bool secure,
    required bool disableWebRtc,
    String? payload,
    String? accessToken,
  }) async {
    if (disableWebRtc) {
      _clientChannelBase = dialDirect(url, payload, secure, port);
    } else {
      final direct = dialDirect(
        SignallingServerAddress.address,
        payload,
        secure,
        SignallingServerAddress.port,
      );

      _clientChannelBase = await dialWebRtc(
        direct,
        url,
        payload,
        accessToken,
      );
    }

    appService = getAppService(
      _clientChannelBase!,
      url,
      payload,
      accessToken,
    );

    resourceService = getResourceService(
      _clientChannelBase!,
      url,
      payload,
      accessToken,
    );

    cameraService = getCameraService(
      _clientChannelBase!,
      url,
      payload,
      accessToken,
    );

    movementService = getMovementService(
      _clientChannelBase!,
      url,
      payload,
      accessToken,
    );

    sensorService = getSensorService(
      _clientChannelBase!,
      url,
      payload,
      accessToken,
    );
  }

  @override
  ViamAppService get viamAppService {
    if (appService == null) {
      throw UnimplementedError();
    }
    return appService!;
  }

  @override
  ViamResourceService get viamResourceService {
    if (resourceService == null) {
      throw UnimplementedError();
    }

    return resourceService!;
  }

  @override
  ViamCameraService get viamCameraService {
    if (cameraService == null) {
      throw UnimplementedError();
    }

    return cameraService!;
  }

  @override
  ViamMovementService get viamMovementService {
    if (movementService == null) {
      throw UnimplementedError();
    }

    return movementService!;
  }

  @override
  ViamSensorService get viamSensorService {
    if (sensorService == null) {
      throw UnimplementedError();
    }

    return sensorService!;
  }

  @override
  Future<void> logout(
    String domain,
    String clientId,
    String? scheme,
  ) =>
      viamLogout(domain, clientId, scheme);
}
