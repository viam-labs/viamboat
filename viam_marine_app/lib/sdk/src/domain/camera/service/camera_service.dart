import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';

abstract class ViamCameraService {
  Future<ViamCameraFrameData> getCameraFrame(String cameraName);

  Future<void> getCameraVideo(String cameraName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName);
}
