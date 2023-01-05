import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/usecase/add_new_boat_use_case.dart';

import 'add_new_boat_use_case_test.mocks.dart';

@GenerateMocks([BoatService])
void main() {
  late BoatService boatService;
  late AddNewBoatUseCase addNewBoatUseCase;

  setUp(() {
    boatService = MockBoatService();
    addNewBoatUseCase = AddNewBoatUseCase(boatService);
  });

  group('AddNewBoatUseCase', () {
    const name = 'name';
    const secret = 'secret';
    const address = 'address';
    const id = 'id';

    test('verify add boat', () async {
      await addNewBoatUseCase(
        id: id,
        address: address,
        name: name,
        secret: secret,
      );

      verify(boatService.addNewBoat(
        id: id,
        name: name,
        address: address,
        secret: secret,
      ));
    });
  });
}
