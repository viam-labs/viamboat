// ignore_for_file: depend_on_referenced_packages
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pb.dart';

void main() {
  late GetPositionResponseToViamPositionMapper getPositionResponseToViamPositionMapper;

  setUp(() {
    getPositionResponseToViamPositionMapper = GetPositionResponseToViamPositionMapper();
  });

  group('When map from GetPositionResponse to ViamPosition', () {
    test('mapper returns correct values', () {
      final geoPoint = GeoPoint(
        latitude: 0.0,
        longitude: 0.0,
      );

      final dto = GetPositionResponse(
        altitudeMm: 0.0,
        coordinate: geoPoint,
      );

      final expectedAnswer = ViamPosition(
        dto.altitudeMm,
        dto.coordinate.latitude,
        dto.coordinate.longitude,
      );

      final actualAnswer = getPositionResponseToViamPositionMapper(dto);

      expect(actualAnswer, equals(expectedAnswer));
    });
  });
}
