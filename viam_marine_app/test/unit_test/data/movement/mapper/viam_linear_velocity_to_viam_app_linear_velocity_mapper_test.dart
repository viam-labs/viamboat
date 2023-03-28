import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart';
import 'package:viam_marine/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_sdk/viam_sdk.dart';

void main() {
  late ViamLinearVelocityToViamAppLinearVelocityMapper viamLinearVelocityToViamAppLinearVelocityMapper;

  setUp(() {
    viamLinearVelocityToViamAppLinearVelocityMapper = ViamLinearVelocityToViamAppLinearVelocityMapper();
  });

  group('When map from ViamLinearVelocity to ViamAppLinearVelocity', () {
    test('mapper returns correct values', () {
      const ViamLinearVelocity dto = ViamLinearVelocity(
        0,
        0,
        0,
      );

      const ViamAppLinearVelocity viamAppLinearVelocity = ViamAppLinearVelocity(
        0,
        0,
        0,
      );

      final actualAnswer = viamLinearVelocityToViamAppLinearVelocityMapper(dto);

      expect(actualAnswer, equals(viamAppLinearVelocity));
    });
  });
}
