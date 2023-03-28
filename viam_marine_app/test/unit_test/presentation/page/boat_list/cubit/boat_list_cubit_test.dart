import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/analytics/usecase/log_delete_boat_event_use_case.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/usecase/change_boat_name_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/delete_boat_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/remove_current_boat_id_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/presentation/page/boat_list/cubit/boat_list_cubit.dart';
import 'package:viam_marine/presentation/page/boat_list/cubit/boat_list_state.dart';

import 'boat_list_cubit_test.mocks.dart';

@GenerateMocks([
  GetBoatsUseCase,
  DeleteBoatUseCase,
  SetCurrentBoatIdUseCase,
  RemoveCurrentBoatIdUseCase,
  LogDeleteBoatEventUseCase,
  GetCurrentBoatIdUseCase,
  ChangeBoatNameUseCase,
])
void main() {
  late BoatListCubit boatListCubit;
  late GetBoatsUseCase getBoatsUseCase;
  late SetCurrentBoatIdUseCase setCurrentBoatIdUseCase;
  late GetCurrentBoatIdUseCase getCurrentBoatIdUseCase;

  setUp(() {
    getBoatsUseCase = MockGetBoatsUseCase();
    setCurrentBoatIdUseCase = MockSetCurrentBoatIdUseCase();
    getCurrentBoatIdUseCase = MockGetCurrentBoatIdUseCase();

    boatListCubit = BoatListCubit(
      getBoatsUseCase,
      getCurrentBoatIdUseCase,
      setCurrentBoatIdUseCase,
    );
  });

  Future<void> initCubit(List<ViamBoat> boats, String boatId) async {
    when(getBoatsUseCase()).thenAnswer(
      (_) async => boats,
    );

    when(getCurrentBoatIdUseCase()).thenAnswer(
      (_) => boatId,
    );
    await boatListCubit.init();
  }

  group('BoatListCubit', () {
    const boatId = 'id';

    const ViamBoat boat = ViamBoat(
      id: boatId,
    );

    test(
      'has initial loading state',
      () => expect(
        boatListCubit.state,
        equals(const BoatListState.loading(boats: [])),
      ),
    );

    blocTest(
      'emits loaded state on init',
      build: () => boatListCubit,
      act: (BoatListCubit cubit) => cubit.init(),
      setUp: () {
        when(getBoatsUseCase()).thenAnswer(
          (_) async => [boat],
        );

        when(getCurrentBoatIdUseCase()).thenAnswer(
          (_) => boatId,
        );
      },
      verify: (_) {
        verify(getCurrentBoatIdUseCase());
        verify(getBoatsUseCase());
      },
      expect: () => [
        BoatListState.loaded(boats: [boat], currentBoatId: boat.id),
      ],
    );

    group('changeBoat()', () {
      const newId = 'newId';

      setUp(() => initCubit([boat], boatId));

      blocTest(
        'changes boat and reloads app',
        build: () => boatListCubit,
        act: (BoatListCubit cubit) => cubit.changeBoat(newId),
        verify: (_) => verify(setCurrentBoatIdUseCase(newId)),
        expect: () => [
          const BoatListState.loading(boats: [boat]),
          const BoatListState.reloadApp(),
        ],
      );

      blocTest(
        'when selected boat id is equal currentBoatId emits loaded state',
        build: () => boatListCubit,
        act: (BoatListCubit cubit) => cubit.changeBoat(boatId),
        expect: () => [
          const BoatListState.loading(boats: [boat]),
          BoatListState.loaded(boats: [boat], currentBoatId: boat.id),
        ],
      );
    });
  });
}
