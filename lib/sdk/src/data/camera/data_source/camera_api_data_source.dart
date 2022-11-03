import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pbgrpc.dart';

class ViamCameraDataSource {
  final ClientChannel _client;

  ViamCameraDataSource(this._client);

  Future<GetImageResponse> getCameraData(
    String cameraName,
  ) async {
    final cameraClient = CameraServiceClient(_client);

    final cameraRequest = GetImageRequest();
    cameraRequest.name = cameraName;

    final response = await cameraClient.getImage(cameraRequest);
    return response;
  }
}
