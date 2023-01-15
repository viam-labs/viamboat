import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/camera/service/camera_service.dart';

@injectable
class GetCameraVideoUseCase {
  final ViamAppCameraService _viamAppCameraService;

  const GetCameraVideoUseCase(this._viamAppCameraService);

  Future<void> call(String cameraName) => _viamAppCameraService.getCameraVideo(cameraName);
}
