import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/app/domain/movement/service/movement_service.dart';
import 'package:viam_marine/app/domain/movement/usecase/get_linear_velocity_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

import 'get_linear_velocity_use_case_test.mocks.dart';

@GenerateMocks([ViamAppMovementService])
void main() {
  late ViamAppMovementService viamAppMovementService;
  late GetLinearVelocityUseCase getLinearVelocityUseCase;

  setUp(() {
    viamAppMovementService = MockViamAppMovementService();
    getLinearVelocityUseCase = GetLinearVelocityUseCase(viamAppMovementService);
  });

  group('GetLinearVelocityUseCase', () {
    const resourceName = ViamAppResourceName(
      'namespace',
      'type',
      'subtype',
      'name',
    );

    test('gets data successfully', () async {
      const viamAppLinearVelocity = ViamAppLinearVelocity(
        0,
        0,
        0,
      );

      when(viamAppMovementService.getLinearVelocity(resourceName)).thenAnswer(
        (_) async => viamAppLinearVelocity,
      );

      final actualAnswer = await getLinearVelocityUseCase(resourceName);

      expect(actualAnswer, equals(viamAppLinearVelocity));
    });

    test('gets data with failure and throws an error', () async {
      const error = 'error';

      when(viamAppMovementService.getLinearVelocity(resourceName)).thenAnswer(
        (_) async => Future.error(error),
      );

      await expectLater(getLinearVelocityUseCase(resourceName), throwsA(error));
    });
  });
}
