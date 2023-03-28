import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:viam_marine/domain/permissions/service/permissions_service.dart';
import 'package:viam_marine/domain/permissions/usecase/request_camera_permission_use_case.dart';

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
    test('requests camera permissions and returns PermissionStaus.', () async {
      const permissionStatus = PermissionStatus.granted;

      when(permissionsService.requestCameraPermission()).thenAnswer(
        (_) async => permissionStatus,
      );

      final actualAnswer = await requestCameraPermissionUseCase();

      expect(actualAnswer, equals(permissionStatus));
    });

    test('fails to request camera permissions and throws an error.', () async {
      const error = 'error';

      when(permissionsService.requestCameraPermission()).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(requestCameraPermissionUseCase(), throwsA(error));
    });
  });
}
