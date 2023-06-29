import 'package:flutter_webrtc/flutter_webrtc.dart';

abstract class ViamAppCameraService {
  Stream<MediaStream> subscribeToCameraStream(String cameraName);
}
