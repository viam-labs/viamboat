import 'package:viam_marine/app/domain/camera/model/viam_app_camera_data.dart';

abstract class ViamAppCameraService {
  Future<ViamAppCameraData> getCameraData(String cameraName);
}
