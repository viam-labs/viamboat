import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:viam_marine/app/domain/permissions/service/permissions_service.dart';

@LazySingleton(as: PermissionsService)
class PermissionsServiceImpl implements PermissionsService {
  final Permission _cameraPermission;

  PermissionsServiceImpl(this._cameraPermission);

  @override
  Future<PermissionStatus> getCameraPermissionStatus() => _cameraPermission.status;

  @override
  Future<PermissionStatus> requestCameraPermission() => _cameraPermission.request();
}
