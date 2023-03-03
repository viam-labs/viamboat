import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/app/domain/camera/model/viam_app_camera_data.dart';

abstract class ViamAppCameraService {
  Future<ViamAppCameraData> getCameraData(String cameraName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName);

  Future<void> getCameraVideo(String cameraName);
}
