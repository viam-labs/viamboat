import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class CameraDataSource {
  final Viam _viam;

  const CameraDataSource(this._viam);

  Future<ViamCameraFrameData> getCameraData(ViamResourceName resourceName) =>
      _viam.viamCameraService.getCameraFrame(resourceName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName) => _viam.viamCameraService.getVideoStream(cameraName);

  Future<void> getCameraVideo(String cameraName) => _viam.viamCameraService.getCameraVideo(cameraName);
}
