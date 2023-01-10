import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_cubit.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_state.dart';

import 'splash_cubit_test.mocks.dart';

@GenerateMocks([
  GetCurrentBoatIdUseCase,
  GetBoatsUseCase,
])
void main() {
  late SplashCubit splashCubit;
  late GetCurrentBoatIdUseCase getCurrentBoatIdUseCase;
  late GetBoatsUseCase getBoatsUseCase;

  setUp(() {
    getCurrentBoatIdUseCase = MockGetCurrentBoatIdUseCase();
    getBoatsUseCase = MockGetBoatsUseCase();
    splashCubit = SplashCubit(
      getCurrentBoatIdUseCase,
      getBoatsUseCase,
    );
  });

  group('SplashCubit', () {
    const boatId = 'boatId';
    const boat = ViamBoat(
      id: 'boatId',
      name: 'name',
      address: 'address',
      secret: 'secret',
    );
    test(
      'has initial loading state',
      () => expect(splashCubit.state, equals(const SplashState.loading())),
    );

    blocTest(
      'emits goToDashboard state when boat is added',
      build: () => splashCubit,
      act: (SplashCubit cubit) => cubit.init(),
      setUp: () {
        when(getCurrentBoatIdUseCase()).thenReturn(boatId);

        when(getBoatsUseCase()).thenAnswer(
          (_) async => [boat],
        );
      },
      expect: () => [
        const SplashState.goToDashboard(),
      ],
    );

    blocTest(
      'emits goToAddBoat state when no boats',
      build: () => splashCubit,
      act: (SplashCubit cubit) => cubit.init(),
      setUp: () {
        when(getCurrentBoatIdUseCase()).thenReturn(boatId);

        when(getBoatsUseCase()).thenAnswer(
          (_) async => [],
        );
      },
      expect: () => [
        const SplashState.goToAddBoat(),
      ],
    );

    blocTest(
      'emits goToAddBoat state when currentBoatId is null',
      build: () => splashCubit,
      act: (SplashCubit cubit) => cubit.init(),
      setUp: () {
        when(getCurrentBoatIdUseCase()).thenReturn(null);

        when(getBoatsUseCase()).thenAnswer(
          (_) async => [],
        );
      },
      expect: () => [
        const SplashState.goToAddBoat(),
      ],
    );
  });
}
