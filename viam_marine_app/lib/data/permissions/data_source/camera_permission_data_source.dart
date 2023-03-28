import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@injectable
class CameraPermissionDataSource {
  final Permission _cameraPermission;

  const CameraPermissionDataSource(this._cameraPermission);

  Future<PermissionStatus> getStatus() => _cameraPermission.status;

  Future<PermissionStatus> requestPermissions() => _cameraPermission.request();
}
