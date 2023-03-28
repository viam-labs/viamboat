import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:viam_marine/data/permissions/data_source/camera_permission_data_source.dart';
import 'package:viam_marine/data/permissions/service/permissions_service_impl.dart';
import 'package:viam_marine/domain/permissions/service/permissions_service.dart';

import 'permissions_service_impl_test.mocks.dart';

@GenerateMocks([
  CameraPermissionDataSource,
])
void main() {
  late CameraPermissionDataSource cameraPermissionDataSource;
  late PermissionsService permissionsService;

  setUp(() {
    cameraPermissionDataSource = MockCameraPermissionDataSource();
    permissionsService = PermissionsServiceImpl(cameraPermissionDataSource);
  });

  group('PermissionsService', () {
    test('gets PermissionStatus successfully', () async {
      const status = PermissionStatus.granted;

      when(cameraPermissionDataSource.getStatus()).thenAnswer(
        (_) async => status,
      );

      final actualAnswer = await permissionsService.getCameraPermissionStatus();

      expect(actualAnswer, equals(status));
    });

    test('gets PermissionStatus with failure and throws an error', () async {
      const error = 'error';

      when(cameraPermissionDataSource.getStatus()).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(permissionsService.getCameraPermissionStatus(), throwsA(error));
    });

    test('requests camera permission successfully and gets PermissionStatus', () async {
      const status = PermissionStatus.granted;

      when(cameraPermissionDataSource.requestPermissions()).thenAnswer(
        (_) async => status,
      );

      final acutalAnswer = await permissionsService.requestCameraPermission();

      expect(acutalAnswer, equals(status));
    });

    test('fails to request camera permission and throws an error', () async {
      const error = 'error';

      when(cameraPermissionDataSource.requestPermissions()).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(permissionsService.requestCameraPermission(), throwsA(error));
    });
  });
}
