import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pbgrpc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';

class ViamCameraDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  ViamCameraDataSource(this._client, this._authHeaderInterceptor);

  Future<GetImageResponse> getCameraData(
    String cameraName,
  ) async {
    final cameraClient = CameraServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final cameraRequest = GetImageRequest();
    cameraRequest.name = cameraName;

    final response = await cameraClient.getImage(cameraRequest);
    return response;
  }
}
