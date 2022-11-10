import 'package:viam_marine/sdk/src/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/camera/mapper/get_camera_response_to_camera_data_mapper.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';
import 'package:viam_marine/sdk/src/domain/camera/service/camera_service.dart';

class ViamCameraServiceImpl implements ViamCameraService {
  final ViamCameraDataSource _dataSource;
  final GetImageResponseToCameraDataMapper _getCameraResponseToCameraDataMapper;

  const ViamCameraServiceImpl(
    this._dataSource,
    this._getCameraResponseToCameraDataMapper,
  );

  @override
  Future<ViamCameraData> getCameraData(String cameraName) async {
    final result = await _dataSource.getCameraData(cameraName);
    return _getCameraResponseToCameraDataMapper(result);
  }
}
