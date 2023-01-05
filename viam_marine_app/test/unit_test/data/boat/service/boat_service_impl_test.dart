import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/data/boat/service/boat_service_impl.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/store/boat_box.dart';
import 'package:viam_marine/app/domain/boat/store/current_boat_store.dart';

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
    test("gets boats succesfully", () async {
      const boats = [
        ViamBoat(
          id: 'id',
          address: 'address',
          secret: 'secret',
          name: 'name',
        ),
      ];

      when(boatBox.read()).thenAnswer((_) async => boats);

      final actualAnswer = await boatService.getBoats();

      expect(actualAnswer, equals(boats));
    });

    test('adds new boat', () async {
      const id = 'id';
      const address = 'address';
      const secret = 'secret';
      const name = 'name';

      const boat = ViamBoat(
        id: id,
        address: address,
        secret: secret,
        name: name,
      );

      await boatService.addNewBoat(
        id: id,
        name: name,
        address: address,
        secret: secret,
      );

      verify(boatBox.write(key: id, value: boat));
    });

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
