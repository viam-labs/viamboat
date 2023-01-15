// ignore_for_file: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';
import 'package:viam_marine/sdk/src/data/camera/mapper/get_camera_response_to_camera_data_mapper.dart';
import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pb.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/sdk/src/domain/camera/model/camera_data.dart';

void main() {
  late GetImageResponseToCameraDataMapper getImageResponseToCameraDataMapper;

  setUp(() {
    getImageResponseToCameraDataMapper = GetImageResponseToCameraDataMapper();
  });

  group('When map from GetImageResponse to CameraData', () {
    test('mapper returns correct values', () {
      final widthPx = Int64();
      final heightPx = Int64();
      final dto = GetImageResponse(
        mimeType: 'mimeType',
        image: const [1],
        widthPx: widthPx,
        heightPx: heightPx,
      );

      final expectedAnswer = ViamCameraFrameData(
        dto.mimeType,
        dto.image,
        dto.widthPx,
        dto.heightPx,
      );

      final acutalAnswer = getImageResponseToCameraDataMapper(dto);

      expect(acutalAnswer, equals(expectedAnswer));
    });
  });
}
