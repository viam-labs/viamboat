import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart';
import 'package:viam_marine/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/domain/camera/service/camera_service.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_sdk/viam_sdk.dart';

@Injectable(as: ViamAppCameraService)
class ViamAppCameraServiceImpl extends ServiceBase implements ViamAppCameraService {
  final CameraDataSource _cameraDataSource;
  final ViamCameraDataToViamAppCameraDataMapper _viamCameraDataToViamAppCameraDataMapper;

  const ViamAppCameraServiceImpl(
    super.tokenExpiredBroadcaster,
    this._cameraDataSource,
    this._viamCameraDataToViamAppCameraDataMapper,
  );

  @override
  Future<ViamAppCameraData> getCameraData(ViamAppResourceName cameraResourceName) async {
    final cameraDataDto = await super<ViamCameraFrameData>(
      () => _cameraDataSource.getCameraData(cameraResourceName.toDto()),
    );

    return _viamCameraDataToViamAppCameraDataMapper(cameraDataDto);
  }

  @override
  Stream<MediaStream> subscribeToCameraStream(String cameraName) =>
      _cameraDataSource.subscribeToCameraStream(cameraName);

  @override
  Future<void> getCameraVideo(String cameraName) async => super(() => _cameraDataSource.getCameraVideo(cameraName));
}
