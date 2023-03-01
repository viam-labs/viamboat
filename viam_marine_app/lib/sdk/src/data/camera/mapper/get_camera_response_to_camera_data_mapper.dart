import 'package:viam_marine/sdk/src/gen/component/camera/v1/camera.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';

class GetImageResponseToCameraDataMapper {
  ViamCameraFrameData call(GetImageResponse dto) => ViamCameraFrameData(
        dto.mimeType,
        dto.image,
      );
}
