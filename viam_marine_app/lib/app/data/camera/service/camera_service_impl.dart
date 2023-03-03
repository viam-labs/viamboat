import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/app/data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart';
import 'package:viam_marine/app/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/app/domain/camera/service/camera_service.dart';

@Injectable(as: ViamAppCameraService)
class ViamAppCameraServiceImpl implements ViamAppCameraService {
  final CameraDataSource _cameraDataSource;
  final ViamCameraDataToViamAppCameraDataMapper _viamCameraDataToViamAppCameraDataMapper;

  const ViamAppCameraServiceImpl(
    this._cameraDataSource,
    this._viamCameraDataToViamAppCameraDataMapper,
  );

  @override
  Future<ViamAppCameraData> getCameraData(String cameraName) async {
    final cameraDataDto = await _cameraDataSource.getCameraData(cameraName);

    return _viamCameraDataToViamAppCameraDataMapper(cameraDataDto);
  }

  @override
  Stream<MediaStream> subscribeToCameraStream(String cameraName) =>
      _cameraDataSource.subscribeToCameraStream(cameraName);

  @override
  Future<void> getCameraVideo(String cameraName) => _cameraDataSource.getCameraVideo(cameraName);
}
