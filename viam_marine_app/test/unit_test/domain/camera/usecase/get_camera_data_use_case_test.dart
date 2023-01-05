//ignore: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/app/domain/camera/service/camera_service.dart';
import 'package:viam_marine/app/domain/camera/usecase/get_camera_data_use_case.dart';

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
    const cameraName = 'cameraName';
    test('gets cameraData successfully', () async {
      final widthPx = Int64();
      final heightPx = Int64();

      final viamAppCameraData = ViamAppCameraData(
        'mimeType',
        const [1],
        widthPx,
        heightPx,
      );

      when(viamAppCameraService.getCameraData(cameraName)).thenAnswer(
        (_) async => viamAppCameraData,
      );

      final actualAnswer = await getCameraDataUseCase(cameraName);

      expect(actualAnswer, equals(viamAppCameraData));
    });

    test('gets data with fialure and throws an error', () async {
      const error = 'error';

      when(viamAppCameraService.getCameraData(cameraName)).thenAnswer((_) => Future.error(error));

      await expectLater(getCameraDataUseCase(cameraName), throwsA(error));
    });
  });
}
