import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';

import 'set_current_boat_id_use_case_test.mocks.dart';

@GenerateMocks([BoatService])
void main() {
  late BoatService boatService;
  late SetCurrentBoatIdUseCase setCurrentBoatIdUseCase;

  setUp(() {
    boatService = MockBoatService();
    setCurrentBoatIdUseCase = SetCurrentBoatIdUseCase(boatService);
  });

  group('SetCurrentBoatIdUseCase', () {
    test('sets current boat id', () async {
      const id = 'id';
      await setCurrentBoatIdUseCase(id);

      verify(boatService.setCurrentBoatId(id));
    });
  });
}
