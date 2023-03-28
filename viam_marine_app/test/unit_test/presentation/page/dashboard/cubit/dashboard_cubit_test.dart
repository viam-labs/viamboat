import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_state.dart';

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
    test(
      'has initial idle state',
      () => expect(dashboardCubit.state, const DashboardState.idle()),
    );
  });
}
