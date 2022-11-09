import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';

const mimeType = 'image/png';

class ViamCameraDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  ViamCameraDataSource(this._client, this._authHeaderInterceptor);

  Future<GetImageResponse> getCameraData(
    String cameraName,
  ) async {
    final stub = RobotServiceClient(
      _client,
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );
    final resourceResponse = await stub.resourceNames(
      ResourceNamesRequest(),
    );
    final cameraResources = resourceResponse.resources.toList(growable: false);

    final cameraResource = cameraResources.firstWhere((resource) => resource.subtype == 'camera');

    final cameraClient = CameraServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final cameraRequest = GetImageRequest(mimeType: mimeType);
    cameraRequest.name = cameraResource.name;

    final response = await cameraClient.getImage(cameraRequest);
    return response;
  }
}
