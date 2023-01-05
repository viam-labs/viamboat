import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:viam_marine/app/domain/permissions/service/permissions_service.dart';

@injectable
class RequestCameraPermissionUseCase {
  final PermissionsService _permissionsService;

  const RequestCameraPermissionUseCase(this._permissionsService);

  Future<PermissionStatus> call() => _permissionsService.requestCameraPermission();
}
