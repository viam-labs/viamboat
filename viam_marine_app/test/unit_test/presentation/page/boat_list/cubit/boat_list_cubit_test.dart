import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/analytics/usecase/log_delete_boat_event_use_case.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/change_boat_name_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/delete_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/remove_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_cubit.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_state.dart';

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
  late DeleteBoatUseCase deleteBoatUseCase;
  late SetCurrentBoatIdUseCase setCurrentBoatIdUseCase;
  late RemoveCurrentBoatIdUseCase removeCurrentBoatIdUseCase;
  late GetCurrentBoatIdUseCase getCurrentBoatIdUseCase;
  late LogDeleteBoatEventUseCase logDeleteBoatEventUseCase;
  late ChangeBoatNameUseCase changeBoatNameUseCase;

  setUp(() {
    getBoatsUseCase = MockGetBoatsUseCase();
    deleteBoatUseCase = MockDeleteBoatUseCase();
    setCurrentBoatIdUseCase = MockSetCurrentBoatIdUseCase();
    removeCurrentBoatIdUseCase = MockRemoveCurrentBoatIdUseCase();
    getCurrentBoatIdUseCase = MockGetCurrentBoatIdUseCase();
    logDeleteBoatEventUseCase = MockLogDeleteBoatEventUseCase();
    changeBoatNameUseCase = MockChangeBoatNameUseCase();

    boatListCubit = BoatListCubit(
      getBoatsUseCase,
      getCurrentBoatIdUseCase,
      deleteBoatUseCase,
      setCurrentBoatIdUseCase,
      removeCurrentBoatIdUseCase,
      logDeleteBoatEventUseCase,
      changeBoatNameUseCase,
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
      name: 'name',
      address: 'address',
      secret: 'secret',
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

    group('showConfirmationPopup()', () {
      const selectedId = 'id';
      setUp(() => initCubit([boat], boatId));

      blocTest(
        'shows ConfirmationPopup and emits loaded state',
        build: () => boatListCubit,
        act: (BoatListCubit cubit) => cubit.showConfirmationPopup(selectedId),
        expect: () => [
          const BoatListState.showConfirmationPopup(boatId: selectedId),
          BoatListState.loaded(boats: [boat], currentBoatId: boat.id),
        ],
      );
    });

    group('deleteBoat()', () {
      const otherBoatId = 'otherBoatId';
      const currentBoatId = 'currentBoatId';

      const otherBoat = ViamBoat(
        id: otherBoatId,
        name: 'name',
        address: 'address',
        secret: 'secret',
      );
      const currentBoat = ViamBoat(
        id: currentBoatId,
        name: 'name',
        address: 'address',
        secret: 'secret',
      );

      const viamBoats = [otherBoat, currentBoat];

      blocTest(
        'removes boat with given id, removes currentBoatId when no more boats and emits reloadApp state',
        build: () => boatListCubit,
        setUp: () async {
          await initCubit([boat], boatId);
          when(getBoatsUseCase()).thenAnswer((_) async => []);
        },
        act: (BoatListCubit cubit) => cubit.deleteBoat(boatId),
        verify: (_) {
          verify(deleteBoatUseCase(boatId));
          verify(removeCurrentBoatIdUseCase());
        },
        expect: () => [
          const BoatListState.closeConfirmationPopup(),
          const BoatListState.reloadApp(),
        ],
      );

      blocTest(
        'removes current boat, sets new currentBoatId and emits reloadApp state',
        build: () => boatListCubit,
        setUp: () async {
          await initCubit(viamBoats, currentBoatId);

          when(getBoatsUseCase()).thenAnswer((_) async => [otherBoat]);
        },
        act: (BoatListCubit cubit) => cubit.deleteBoat(currentBoatId),
        verify: (_) {
          verify(deleteBoatUseCase(currentBoatId));
          verify(setCurrentBoatIdUseCase(otherBoatId));
        },
        expect: () => [
          const BoatListState.closeConfirmationPopup(),
          const BoatListState.reloadApp(),
        ],
      );

      blocTest(
        'removes boat and emits closeConfirmationPopup and loaded states',
        build: () => boatListCubit,
        setUp: () async {
          await initCubit(viamBoats, currentBoatId);

          when(getBoatsUseCase()).thenAnswer((_) async => [currentBoat]);
        },
        act: (BoatListCubit cubit) => cubit.deleteBoat(otherBoatId),
        verify: (_) => verify(deleteBoatUseCase(otherBoatId)),
        expect: () => [
          const BoatListState.closeConfirmationPopup(),
          BoatListState.loaded(boats: [currentBoat], currentBoatId: currentBoat.id),
        ],
      );
    });
  });
}
