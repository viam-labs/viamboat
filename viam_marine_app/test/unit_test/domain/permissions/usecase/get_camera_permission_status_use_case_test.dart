import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:viam_marine/app/domain/permissions/service/permissions_service.dart';
import 'package:viam_marine/app/domain/permissions/usecase/get_camera_permission_status_use_case.dart';

import 'get_camera_permission_status_use_case_test.mocks.dart';

@GenerateMocks([PermissionsService])
void main() {
  late GetCameraPermissionStatusUseCase getCameraPermissionStatusUseCase;
  late PermissionsService permissionsService;

  setUp(() {
    permissionsService = MockPermissionsService();
    getCameraPermissionStatusUseCase = GetCameraPermissionStatusUseCase(permissionsService);
  });

  group('GetCameraPermissionStatusUseCase', () {
    test('gets camera PermissionStatus successfully', () async {
      const status = PermissionStatus.granted;

      when(permissionsService.getCameraPermissionStatus()).thenAnswer(
        (_) async => status,
      );

      final actualAnswer = await getCameraPermissionStatusUseCase();

      expect(actualAnswer, equals(status));
    });

    test('fails to get camera PermissionStatus and throws an error', () async {
      const error = 'error';

      when(permissionsService.getCameraPermissionStatus()).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(getCameraPermissionStatusUseCase(), throwsA(error));
    });
  });
}
