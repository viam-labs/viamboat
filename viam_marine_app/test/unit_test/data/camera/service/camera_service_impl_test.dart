//ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/app/data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart';
import 'package:viam_marine/app/data/camera/service/camera_service_impl.dart';
import 'package:viam_marine/app/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/app/domain/camera/service/camera_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';
import 'camera_service_impl_test.mocks.dart';

@GenerateMocks([
  CameraDataSource,
  ViamCameraDataToViamAppCameraDataMapper,
])
void main() {
  late CameraDataSource cameraDataSource;
  late ViamCameraDataToViamAppCameraDataMapper viamCameraDataToViamAppCameraDataMapper;
  late ViamAppCameraService cameraService;

  setUp(() {
    cameraDataSource = MockCameraDataSource();
    viamCameraDataToViamAppCameraDataMapper = MockViamCameraDataToViamAppCameraDataMapper();
    cameraService = ViamAppCameraServiceImpl(
      cameraDataSource,
      viamCameraDataToViamAppCameraDataMapper,
    );
  });

  group('App camera service', () {
    const resourceName = ViamAppResourceName(
      'namespace',
      'type',
      'subtype',
      'name',
    );
    test('gets data successfully', () async {
      const dto = ViamCameraFrameData(
        'mimeType',
        [1],
      );

      const viamAppCameraData = ViamAppCameraData(
        'mimeType',
        [1],
      );

      when(cameraDataSource.getCameraData(resourceName.toDto())).thenAnswer(
        (_) async => dto,
      );

      when(viamCameraDataToViamAppCameraDataMapper(dto)).thenReturn(viamAppCameraData);

      final actualAnswer = await cameraService.getCameraData(resourceName);

      expect(actualAnswer, equals(viamAppCameraData));
    });

    test('gets data with failure and throws an error', () async {
      const error = 'error';

      when(cameraDataSource.getCameraData(resourceName.toDto())).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(cameraService.getCameraData(resourceName), throwsA(error));
    });
  });
}
