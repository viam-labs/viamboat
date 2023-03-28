import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/data/movement/mapper/viam_position_to_viam_app_position_mapper.dart';
import 'package:viam_marine/domain/movement/model/viam_app_position.dart';
import 'package:viam_sdk/viam_sdk.dart';

void main() {
  late ViamPositionToViamAppPositionMapper viamPositionToViamAppPositionMapper;

  setUp(() {
    viamPositionToViamAppPositionMapper = ViamPositionToViamAppPositionMapper();
  });

  group('When map ViamPosition to ViamAppPosition', () {
    test('mapper returns correct values', () {
      const dto = ViamPosition(
        0.0,
        0.0,
        0.0,
      );

      final expectedAnswer = ViamAppPosition(
        dto.altitude,
        dto.latitude,
        dto.longitude,
      );

      final actualAnswer = viamPositionToViamAppPositionMapper(dto);

      expect(actualAnswer, equals(expectedAnswer));
    });
  });
}
