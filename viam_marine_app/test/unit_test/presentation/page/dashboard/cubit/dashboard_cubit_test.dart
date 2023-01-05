import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'dashboard_cubit_test.mocks.dart';

@GenerateMocks([
  GetResourceNamesUseCase,
  GetBoatsUseCase,
  GetCurrentBoatIdUseCase,
])
void main() {
  late DashboardCubit dashboardCubit;
  late GetResourceNamesUseCase getResourceNamesUseCase;
  late GetBoatsUseCase getBoatsUseCase;
  late GetCurrentBoatIdUseCase getCurrentBoatIdUseCase;

  setUp(() {
    getResourceNamesUseCase = MockGetResourceNamesUseCase();
    getBoatsUseCase = MockGetBoatsUseCase();
    getCurrentBoatIdUseCase = MockGetCurrentBoatIdUseCase();

    dashboardCubit = DashboardCubit(
      getResourceNamesUseCase,
      getBoatsUseCase,
      getCurrentBoatIdUseCase,
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

    const List<ViamAppResourceName> resourceNames = [
      ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
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
    ];

    const List<ViamAppResourceName> positionSensors = [
      ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'movement',
      ),
    ];

    final List<ViamAppResourceName> sortedSensors = [
      const ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-A',
      ),
      const ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-B',
      ),
      const ViamAppResourceName(
        'namespace',
        'type',
        'sensor',
        'fluid-C',
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
        when(getResourceNamesUseCase(null, null)).thenAnswer(
          (_) async => resourceNames,
        );
        when(getBoatsUseCase()).thenAnswer(
          (_) async => boats,
        );
        when(getCurrentBoatIdUseCase()).thenReturn(id);
      },
      act: (DashboardCubit cubit) => cubit.init(),
      expect: () => [
        const DashboardState.loading(),
        DashboardState.loaded(
          sortedSensors,
          positionSensors,
          name,
        ),
      ],
    );

    blocTest(
      'emits error state on init',
      build: () => dashboardCubit,
      setUp: () => when(getResourceNamesUseCase(null, null)).thenAnswer(
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
