import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/camera/service/camera_service.dart';

@injectable
class SubscribeToCameraStreamUseCase {
  final ViamAppCameraService _viamAppCameraService;

  const SubscribeToCameraStreamUseCase(this._viamAppCameraService);

  Stream<MediaStream> call(String cameraName) => _viamAppCameraService.subscribeToCameraStream(cameraName);
}
