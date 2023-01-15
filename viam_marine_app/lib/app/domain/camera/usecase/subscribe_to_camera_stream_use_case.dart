import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/camera/service/camera_service.dart';

@injectable
class SubscribeToCameraStreamUseCase {
  final ViamAppCameraService _viamAppCameraService;

  const SubscribeToCameraStreamUseCase(this._viamAppCameraService);

  Stream<MediaStream> call() => _viamAppCameraService.subscribeToCameraStream();
}