import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';

abstract class ViamAppCameraService {
  Future<ViamAppCameraData> getCameraData(ViamAppResourceName cameraName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName);

  Future<void> getCameraVideo(String cameraName);
}
