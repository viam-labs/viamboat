import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'dashboard_cubit_test.mocks.dart';

@GenerateMocks([ResourceService, BoatService])
void main() {
  late ResourceService resourceService;
  late DashboardCubit dashboardCubit;
  late BoatService boatService;

  setUp(() {
    resourceService = MockResourceService();

    boatService = MockBoatService();

    dashboardCubit = DashboardCubit(
      resourceService,
      boatService,
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
        when(resourceService.getResourceNames()).thenAnswer(
          (_) async => resourceNames,
        );
        when(boatService.getBoats()).thenAnswer(
          (_) async => boats,
        );
        when(boatService.getCurrentBoatId()).thenReturn(id);
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
      setUp: () => when(resourceService.getResourceNames()).thenAnswer(
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
