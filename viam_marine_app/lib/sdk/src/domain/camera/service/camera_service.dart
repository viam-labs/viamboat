import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';

abstract class ViamCameraService {
  Future<ViamCameraData> getCameraData(String cameraName);
}
