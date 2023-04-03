import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_state.dart';

import '../../locations/cubit/locations_page_cubit_test.mocks.dart';
import 'main_cubit_test.mocks.dart';

@GenerateMocks([
  GetResourceNamesUseCase,
])
void main() {
  late MainCubit mainCubit;
  late GetResourceNamesUseCase getResourceNamesUseCase;
  late GetTokenOrNullUseCase getTokenOrNullUseCase;

  setUp(() {
    getResourceNamesUseCase = MockGetResourceNamesUseCase();
    getTokenOrNullUseCase = MockGetTokenOrNullUseCase();
    mainCubit = MainCubit(
      getResourceNamesUseCase,
      getTokenOrNullUseCase,
    );
  });

  group('Dashboard cubit', () {
    const List<ViamAppResourceName> resourceNames = [
      ViamAppResourceName(
        'namespace',
        'type',
        'movement_sensor',
        'movement',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-A',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-C',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-B',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'camera',
        'camera',
      ),
    ];

    const List<ViamAppResourceName> positionSensors = [
      ViamAppResourceName(
        'namespace',
        'type',
        'movement_sensor',
        'movement',
      ),
    ];

    const List<ViamAppResourceName> cameraSensors = [
      ViamAppResourceName(
        'namespace',
        'type',
        'camera',
        'camera',
      ),
    ];

    const List<ViamAppResourceName> sortedSensors = [
      ViamAppResourceName(
        'namespace',
        'type',
        'movement_sensor',
        'movementheading',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'movement_sensor',
        'movementlinearVelocity',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-A',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-B',
      ),
      ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-C',
      ),
    ];

    const error = 'error';

    test(
      'has initial idle state',
      () => expect(mainCubit.state, const MainState.idle()),
    );

    blocTest(
      'emits loaded state on init',
      build: () => mainCubit,
      setUp: () {
        when(getResourceNamesUseCase(null, null)).thenAnswer(
          (_) async => resourceNames,
        );
      },
      act: (MainCubit cubit) => cubit.init(),
      expect: () => [
        const MainState.loading(),
        const MainState.loaded(
          sortedSensors,
          positionSensors,
          cameraSensors,
        ),
      ],
    );

    blocTest(
      'emits error state on init',
      build: () => mainCubit,
      setUp: () => when(getResourceNamesUseCase(null, null)).thenAnswer(
        (_) => Future.error(error),
      ),
      act: (MainCubit cubit) => cubit.init(),
      expect: () => [
        const MainState.loading(),
        const MainState.error(),
      ],
    );
  });
}
