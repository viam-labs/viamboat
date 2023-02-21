import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';

import 'dashboard_cubit_test.mocks.dart';

@GenerateMocks([
  GetBoatsUseCase,
  GetCurrentBoatIdUseCase,
  SubscribeToBoatUpdateStreamUseCase,
])
void main() {
  late DashboardCubit dashboardCubit;
  late GetBoatsUseCase getBoatsUseCase;
  late GetCurrentBoatIdUseCase getCurrentBoatIdUseCase;
  late SubscribeToBoatUpdateStreamUseCase subscribeToBoatUpdateStreamUseCase;

  setUp(() {
    getBoatsUseCase = MockGetBoatsUseCase();
    getCurrentBoatIdUseCase = MockGetCurrentBoatIdUseCase();
    subscribeToBoatUpdateStreamUseCase = MockSubscribeToBoatUpdateStreamUseCase();

    dashboardCubit = DashboardCubit(
      getBoatsUseCase,
      getCurrentBoatIdUseCase,
      subscribeToBoatUpdateStreamUseCase,
    );
  });

  group('Dashboard cubit', () {
    const id = 'id';
    const name = 'name';

    const List<ViamBoat> boats = [
      ViamBoat(
        id: id,
        name: name,
        address: 'address',
        secret: 'secret',
      ),
    ];

    const error = 'error';

    test(
      'has initial idle state',
      () => expect(dashboardCubit.state, const DashboardState.idle()),
    );

    blocTest(
      'emits loaded state on init',
      build: () => dashboardCubit,
      setUp: () {
        when(getBoatsUseCase()).thenAnswer(
          (_) async => boats,
        );
        when(getCurrentBoatIdUseCase()).thenReturn(id);
        when(subscribeToBoatUpdateStreamUseCase()).thenAnswer((_) => const Stream.empty());
      },
      act: (DashboardCubit cubit) => cubit.init(),
      expect: () => [
        const DashboardState.loading(),
        const DashboardState.loaded(name),
      ],
    );

    blocTest(
      'emits error state on init',
      build: () => dashboardCubit,
      setUp: () => when(getBoatsUseCase()).thenAnswer(
        (_) => Future.error(error),
      ),
      act: (DashboardCubit cubit) => cubit.init(),
      expect: () => [
        const DashboardState.loading(),
        const DashboardState.error(),
      ],
    );
  });
}
