import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class CameraDataSource {
  final ViamSdk _viamSdk;

  const CameraDataSource(this._viamSdk);

  Future<ViamCameraData> getCameraData(String cameraName) async => _viamSdk.getCameraData(cameraName);
}
