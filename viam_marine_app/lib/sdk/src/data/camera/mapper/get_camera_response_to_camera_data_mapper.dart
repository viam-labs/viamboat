import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';

class GetImageResponseToCameraDataMapper {
  ViamCameraFrameData call(GetImageResponse dto) => ViamCameraFrameData(
        dto.mimeType,
        dto.image,
        dto.widthPx,
        dto.heightPx,
      );
}
