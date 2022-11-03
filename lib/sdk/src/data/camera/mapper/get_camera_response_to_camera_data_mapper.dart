import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';

class GetImageResponseToCameraDataMapper {
  ViamCameraData call(GetImageResponse dto) => ViamCameraData(
        dto.mimeType,
        dto.image,
        dto.widthPx,
        dto.heightPx,
      );
}
