//ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/domain/camera/service/camera_service.dart';
import 'package:viam_marine/domain/camera/usecase/get_camera_data_use_case.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';

import 'get_camera_data_use_case_test.mocks.dart';

@GenerateMocks([ViamAppCameraService])
void main() {
  late GetCameraDataUseCase getCameraDataUseCase;
  late ViamAppCameraService viamAppCameraService;

  setUp(() {
    viamAppCameraService = MockViamAppCameraService();
    getCameraDataUseCase = GetCameraDataUseCase(viamAppCameraService);
  });

  group('GetCameraDataUseCase', () {
    const resourceName = ViamAppResourceName(
      'namespace',
      'type',
      'subtype',
      'name',
    );
    test('gets cameraData successfully', () async {
      const viamAppCameraData = ViamAppCameraData(
        'mimeType',
        [1],
      );

      when(viamAppCameraService.getCameraData(resourceName)).thenAnswer(
        (_) async => viamAppCameraData,
      );

      final actualAnswer = await getCameraDataUseCase(resourceName);

      expect(actualAnswer, equals(viamAppCameraData));
    });

    test('gets data with failure and throws an error', () async {
      const error = 'error';

      when(viamAppCameraService.getCameraData(resourceName)).thenAnswer((_) => Future.error(error));

      await expectLater(getCameraDataUseCase(resourceName), throwsA(error));
    });
  });
}
