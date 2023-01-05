import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/app/domain/permissions/service/permissions_service.dart';
import 'package:viam_marine/app/domain/permissions/usecase/request_camera_permission_use_case.dart';

import 'request_camera_permission_status_use_case_test.mocks.dart';

@GenerateMocks([PermissionsService])
void main() {
  late RequestCameraPermissionUseCase requestCameraPermissionUseCase;
  late PermissionsService permissionsService;

  setUp(() {
    permissionsService = MockPermissionsService();
    requestCameraPermissionUseCase = RequestCameraPermissionUseCase(permissionsService);
  });

  group('RequestCameraPermissionUseCase', () {
    test('g', () {});
  });
}
