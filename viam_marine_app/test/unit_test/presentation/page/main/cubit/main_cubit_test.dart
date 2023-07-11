import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart';
import 'package:viam_marine/domain/robot_manager/use_case/check_connection_use_case.dart';
import 'package:viam_marine/domain/robot_manager/use_case/connect_to_robot_use_case.dart';
import 'package:viam_marine/domain/service_base/use_case/subscribe_to_token_expired_stream_use_case.dart';
import 'package:viam_marine/domain/auth/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_state.dart';

import 'main_cubit_test.mocks.dart';

@GenerateMocks([
  GetResourceNamesUseCase,
  GetTokenOrNullUseCase,
  SubscribeToTokenExpiredStreamUseCase,
  ClearCacheUseCase,
  ConnectToRobotUseCase,
  CheckConnectionUseCase,
])
void main() {
  late MainCubit mainCubit;
  late GetResourceNamesUseCase getResourceNamesUseCase;
  late GetTokenOrNullUseCase getTokenOrNullUseCase;
  late SubscribeToTokenExpiredStreamUseCase subscribeToBoatUpdateStreamUseCase;
  late ClearCacheUseCase clearCacheUseCase;
  late ConnectToRobotUseCase connectToRobotUseCase;
  late CheckConnectionUseCase checkConnectionUseCase;

  setUp(() {
    getResourceNamesUseCase = MockGetResourceNamesUseCase();
    getTokenOrNullUseCase = MockGetTokenOrNullUseCase();
    subscribeToBoatUpdateStreamUseCase = MockSubscribeToTokenExpiredStreamUseCase();
    clearCacheUseCase = MockClearCacheUseCase();
    connectToRobotUseCase = MockConnectToRobotUseCase();
    checkConnectionUseCase = MockCheckConnectionUseCase();

    mainCubit = MainCubit(
      getResourceNamesUseCase,
      getTokenOrNullUseCase,
      subscribeToBoatUpdateStreamUseCase,
      clearCacheUseCase,
      connectToRobotUseCase,
      checkConnectionUseCase,
    );
  });

  group('Dashboard cubit', () {
    const robotConfig = RobotConfig(
      name: 'name',
      id: 'id',
      location: 'location',
      secret: 'secret',
      address: 'address',
    );

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

    test(
      'has initial idle state',
      () => expect(mainCubit.state, const MainState.idle()),
    );

    blocTest(
      'emits loaded state on init',
      build: () => mainCubit,
      setUp: () {
        when(subscribeToBoatUpdateStreamUseCase()).thenAnswer(
          (_) => const Stream.empty(),
        );
        when(getResourceNamesUseCase()).thenReturn(resourceNames);
      },
      act: (MainCubit cubit) => cubit.init(robotConfig),
      expect: () => [
        const MainState.loading(),
        const MainState.loaded(
          robotConfig,
          sortedSensors,
          positionSensors,
          cameraSensors,
          ['movement'],
        ),
      ],
    );
  });
}
