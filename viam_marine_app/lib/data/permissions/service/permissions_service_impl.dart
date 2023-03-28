import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:viam_marine/data/permissions/data_source/camera_permission_data_source.dart';
import 'package:viam_marine/domain/permissions/service/permissions_service.dart';

@LazySingleton(as: PermissionsService)
class PermissionsServiceImpl implements PermissionsService {
  final CameraPermissionDataSource _cameraPermissionDataSource;

  const PermissionsServiceImpl(this._cameraPermissionDataSource);

  @override
  Future<PermissionStatus> getCameraPermissionStatus() => _cameraPermissionDataSource.getStatus();

  @override
  Future<PermissionStatus> requestCameraPermission() => _cameraPermissionDataSource.requestPermissions();
}
