import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class CameraDataSource {
  final RobotManager _robotManager;

  const CameraDataSource(this._robotManager);

  Future<ViamCameraFrameData> getCameraData(ViamResourceName resourceName) =>
      _robotManager.cameraClient.viamCameraService.getCameraFrame(resourceName);

  Stream<MediaStream> subscribeToCameraStream(String cameraName) =>
      _robotManager.cameraClient.viamCameraService.getVideoStream(cameraName);

  Future<void> getCameraVideo(String cameraName) =>
      _robotManager.cameraClient.viamCameraService.getCameraVideo(cameraName);
}
