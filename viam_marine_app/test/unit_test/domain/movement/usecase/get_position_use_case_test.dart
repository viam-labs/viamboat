import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/app/domain/movement/service/movement_service.dart';
import 'package:viam_marine/app/domain/movement/usecase/get_position_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

import 'get_position_use_case_test.mocks.dart';

@GenerateMocks([ViamAppMovementService])
void main() {
  late GetPostionUseCase getPostionUseCase;
  late ViamAppMovementService viamAppMovementService;

  setUp(() {
    viamAppMovementService = MockViamAppMovementService();
    getPostionUseCase = GetPostionUseCase(viamAppMovementService);
  });

  group('GetPostionUseCase', () {
    const resourceName = ViamAppResourceName(
      'namespace',
      'type',
      'subtype',
      'name',
    );

    test('gets ViamAppPosition successfully', () async {
      const viamAppPostion = ViamAppPosition(0.0, 0.0, 0.0);

      when(viamAppMovementService.getPosition(resourceName)).thenAnswer(
        (_) async => viamAppPostion,
      );

      final actualAnswer = await getPostionUseCase(resourceName);

      expect(actualAnswer, equals(viamAppPostion));
    });

    test('gets data with failure and throws an error', () async {
      const error = 'error';

      when(viamAppMovementService.getPosition(resourceName)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(getPostionUseCase(resourceName), throwsA(error));
    });
  });
}
