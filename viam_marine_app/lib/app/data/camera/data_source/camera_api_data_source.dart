import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class CameraDataSource {
  final Viam _viam;

  const CameraDataSource(this._viam);

  Future<ViamCameraFrameData> getCameraData(String cameraName) => _viam.viamCameraService.getCameraFrame(cameraName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName) =>
      _viam.viamCameraService.subscribeToCameraStream(cameraName);

  Future<void> getCameraVideo(String cameraName) => _viam.viamCameraService.getCameraVideo(cameraName);
}
