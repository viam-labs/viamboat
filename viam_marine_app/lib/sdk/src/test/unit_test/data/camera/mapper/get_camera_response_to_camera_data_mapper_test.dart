// ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/sdk/src/data/camera/mapper/get_camera_response_to_camera_data_mapper.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';
import 'package:viam_marine/sdk/src/gen/component/camera/v1/camera.pb.dart';

void main() {
  late GetImageResponseToCameraDataMapper getImageResponseToCameraDataMapper;

  setUp(() {
    getImageResponseToCameraDataMapper = GetImageResponseToCameraDataMapper();
  });

  group('When map from GetImageResponse to CameraData', () {
    test('mapper returns correct values', () {
      final dto = GetImageResponse(
        mimeType: 'mimeType',
        image: const [1],
      );

      final expectedAnswer = ViamCameraFrameData(
        dto.mimeType,
        dto.image,
      );

      final acutalAnswer = getImageResponseToCameraDataMapper(dto);

      expect(acutalAnswer, equals(expectedAnswer));
    });
  });
}
