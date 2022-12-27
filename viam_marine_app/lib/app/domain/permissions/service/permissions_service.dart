import 'package:permission_handler/permission_handler.dart';

abstract class PermissionsService {
  Future<PermissionStatus> getCameraPermissionStatus();

  Future<PermissionStatus> requestCameraPermission();
}
