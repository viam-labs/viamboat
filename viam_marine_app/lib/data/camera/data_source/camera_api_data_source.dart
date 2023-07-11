import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class CameraDataSource {
  final RobotManager _robotManager;

  const CameraDataSource(this._robotManager);

  Stream<MediaStream> subscribeToCameraStream(String cameraName) {
    final StreamClient streamClient = _robotManager.getStreamClient(cameraName);

    return streamClient.getStream();
  }
}
