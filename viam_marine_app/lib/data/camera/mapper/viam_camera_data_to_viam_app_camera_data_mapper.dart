import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ViamCameraDataToViamAppCameraDataMapper {
  ViamAppCameraData call(ViamCameraFrameData cameraData) => ViamAppCameraData(
        cameraData.mimeType,
        cameraData.image,
      );
}
