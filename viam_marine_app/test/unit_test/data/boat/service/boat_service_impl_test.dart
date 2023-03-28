import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/data/boat/service/boat_service_impl.dart';
import 'package:viam_marine/domain/boat/service/boat_service.dart';
import 'package:viam_marine/domain/boat/store/boat_box.dart';
import 'package:viam_marine/domain/boat/store/current_boat_store.dart';

import 'boat_service_impl_test.mocks.dart';

@GenerateMocks([BoatBox, CurrentBoatStore])
void main() {
  late BoatService boatService;
  late BoatBox boatBox;
  late CurrentBoatStore currentBoatStore;

  setUp(() {
    boatBox = MockBoatBox();
    currentBoatStore = MockCurrentBoatStore();
    boatService = BoatServiceImpl(boatBox, currentBoatStore);
  });

  group("BoatService", () {
    test('gets curernt boat id', () {
      const id = 'id';

      when(currentBoatStore.getCurrentBoatId()).thenReturn(id);

      final actualAnswer = boatService.getCurrentBoatId();

      expect(actualAnswer, equals(id));
    });

    test('returns null when id not present in store', () {
      when(currentBoatStore.getCurrentBoatId()).thenReturn(null);

      final actualAnswer = boatService.getCurrentBoatId();

      expect(actualAnswer, equals(null));
    });

    test('removes boat with given id', () async {
      const id = 'id';

      await boatService.deleteBoat(id);

      verify(boatBox.delete(key: id));
    });

    test('removes current boat id', () async {
      await boatService.removeCurrentBoatId();

      verify(currentBoatStore.removeCurrentBoatId());
    });

    test('sets current boat id', () async {
      const id = 'id';

      await boatService.setCurrentBoatId(id);

      verify(currentBoatStore.setCurrentBoatId(id));
    });
  });
}
