import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/domain/camera/service/camera_service.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';

@Injectable(as: ViamAppCameraService)
class ViamAppCameraServiceImpl extends ServiceBase implements ViamAppCameraService {
  final CameraDataSource _cameraDataSource;

  const ViamAppCameraServiceImpl(
    super.tokenExpiredBroadcaster,
    this._cameraDataSource,
  );

  @override
  Stream<MediaStream> subscribeToCameraStream(String cameraName) =>
      _cameraDataSource.subscribeToCameraStream(cameraName);
}
