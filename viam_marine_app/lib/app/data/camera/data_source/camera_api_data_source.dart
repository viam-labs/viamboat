import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class CameraDataSource {
  final ViamSdk _viamSdk;

  const CameraDataSource(this._viamSdk);

  Future<ViamCameraFrameData> getCameraData(String cameraName) => _viamSdk.getCameraFrameData(cameraName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName) => _viamSdk.subscribeToCameraStream(cameraName);

  Future<void> getCameraVideo(String cameraName) => _viamSdk.getCameraVideo(cameraName);
}
