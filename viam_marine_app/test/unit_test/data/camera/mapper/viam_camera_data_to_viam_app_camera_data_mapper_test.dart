//ignore: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/app/data/camera/mapper/viam_camera_data_to_viam_app_camera_data_mapper.dart';
import 'package:viam_marine/app/domain/camera/model/viam_app_camera_data.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

void main() {
  late ViamCameraDataToViamAppCameraDataMapper viamSensorReadingsToViamAppSensorReadingsMapper;

  setUp(() {
    viamSensorReadingsToViamAppSensorReadingsMapper = ViamCameraDataToViamAppCameraDataMapper();
  });

  group('When map from ViamCameraData to ViamAppCameraData', () {
    test('mapper returns correct values', () {
      final widthPx = Int64();
      final heightPx = Int64();

      final dto = ViamCameraData(
        'mimeType',
        const [1],
        widthPx,
        heightPx,
      );

      final expectedAnswer = ViamAppCameraData(
        dto.mimeType,
        dto.image,
        dto.widthPx,
        dto.heightPx,
      );

      final actualAnswer = viamSensorReadingsToViamAppSensorReadingsMapper(dto);

      expect(actualAnswer, equals(expectedAnswer));
    });
  });
}
