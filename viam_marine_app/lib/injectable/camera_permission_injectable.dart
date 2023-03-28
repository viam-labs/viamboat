import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

@module
abstract class CameraPermissionModule {
  @singleton
  Permission get cameraPermission => Permission.camera;
}
