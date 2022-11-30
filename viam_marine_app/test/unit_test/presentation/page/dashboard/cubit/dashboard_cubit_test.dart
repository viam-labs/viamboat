import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'dashboard_cubit_test.mocks.dart';

@GenerateMocks([ResourceService])
void main() {
  late ResourceService resourceService;
  late DashboardCubit dashboardCubit;

  setUp(() {
    resourceService = MockResourceService();

    dashboardCubit = DashboardCubit(resourceService);
  });

  group('Dashboard cubit', () {
    const List<ViamAppResourceName> resourceNames = [
      ViamAppResourceName('namespace', 'type', 'subtype', 'movement'),
      ViamAppResourceName('namespace', 'type', 'sensor', 'fluid-'),
    ];

    const List<ViamAppResourceName> sensors = [
      ViamAppResourceName('namespace', 'type', 'sensor', 'fluid-'),
    ];
    const List<ViamAppResourceName> positionSensors = [
      ViamAppResourceName('namespace', 'type', 'subtype', 'movement'),
    ];

    const error = 'error';

    test(
      'has initial idle state',
      () => expect(dashboardCubit.state, const DashboardState.idle()),
    );

    blocTest(
      'emits loading and loaded states on init',
      build: () => dashboardCubit,
      setUp: () => when(resourceService.getResourceNames()).thenAnswer(
        (_) async => resourceNames,
      ),
      act: (DashboardCubit cubit) => cubit.init(),
      expect: () => [
        const DashboardState.loading(),
        const DashboardState.loaded(sensors, positionSensors),
      ],
    );

    blocTest(
      'emits error state on init when fails',
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
