import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pb.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/data_source/web_rtc_api_data_source.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';
import 'package:viam_marine/sdk/src/domain/camera/service/camera_service.dart';
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
  final WebRtcApiDataSource _webRtcApiDataSource;

  ViamSdkImpl(
    this._resourceService,
    this._sensorService,
    this._navigationService,
    this._cameraService,
    this._webRtcApiDataSource,
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
  Future<ViamCameraData> getCameraData(String cameraName) => _cameraService.getCameraData(cameraName);

  @override
  Future getResponseStream(String sdp) => _webRtcApiDataSource.getResponseStream(sdp);

  @override
  Future<void> update(String uuid) => _webRtcApiDataSource.update(uuid);

  @override
  Future<void> sendError(String uuid, String msg) => _webRtcApiDataSource.sendError(uuid, msg);

  @override
  Future<void> updateICECandidate(ICECandidate cand, String uuid) =>
      _webRtcApiDataSource.updateICECandidate(cand, uuid);
}
