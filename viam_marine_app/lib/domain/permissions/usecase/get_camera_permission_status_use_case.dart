import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:viam_marine/domain/permissions/service/permissions_service.dart';

@injectable
class GetCameraPermissionStatusUseCase {
  final PermissionsService _permissionsService;

  const GetCameraPermissionStatusUseCase(this._permissionsService);

  Future<PermissionStatus> call() => _permissionsService.getCameraPermissionStatus();
}
