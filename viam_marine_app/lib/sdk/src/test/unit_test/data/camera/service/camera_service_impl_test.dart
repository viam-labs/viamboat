// ignore_for_file: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/sdk/src/data/camera/data_source/camera_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/camera/mapper/get_camera_response_to_camera_data_mapper.dart';
import 'package:viam_marine/sdk/src/data/camera/service/camera_service_impl.dart';
import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pb.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';
import 'package:viam_marine/sdk/src/domain/camera/service/camera_service.dart';
import 'package:viam_marine/sdk/src/test/unit_test/generated/mocks.mocks.dart';

void main() {
  late ViamCameraDataSource viamCameraDataSource;
  late GetImageResponseToCameraDataMapper getImageResponseToCameraDataMapper;
  late ViamCameraService viamCameraService;

  setUp(() {
    viamCameraDataSource = MockViamCameraDataSource();
    getImageResponseToCameraDataMapper = MockGetImageResponseToCameraDataMapper();
    viamCameraService = ViamCameraServiceImpl(
      viamCameraDataSource,
      getImageResponseToCameraDataMapper,
    );
  });

  group('Sdk Camera service', () {
    test('gets data successfully', () async {
      const cameraName = 'cameraName';
      final widthPx = Int64();
      final heightPx = Int64();

      final dto = GetImageResponse(
        mimeType: 'mimeType',
        image: const [1],
        widthPx: widthPx,
        heightPx: heightPx,
      );

      final expectedAnswer = ViamCameraData(
        'mimeType',
        const [1],
        widthPx,
        heightPx,
      );

      when(viamCameraDataSource.getCameraData(cameraName)).thenAnswer(
        (_) async => dto,
      );

      when(getImageResponseToCameraDataMapper(dto)).thenReturn(expectedAnswer);

      final actualAnswer = await viamCameraService.getCameraData(cameraName);

      expect(actualAnswer, equals(expectedAnswer));
    });
    test('gets data with failure and throws an error', () async {
      const cameraName = 'cameraName';
      const error = 'error';

      when(viamCameraDataSource.getCameraData(cameraName)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(viamCameraService.getCameraData(cameraName), throwsA(error));
    });
  });
}
