import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/app/domain/camera/service/camera_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

@injectable
class GetCameraDataUseCase {
  final ViamAppCameraService _viamAppCameraService;

  const GetCameraDataUseCase(this._viamAppCameraService);

  Future<ViamAppCameraData> call(ViamAppResourceName cameraName) => _viamAppCameraService.getCameraData(cameraName);
}
