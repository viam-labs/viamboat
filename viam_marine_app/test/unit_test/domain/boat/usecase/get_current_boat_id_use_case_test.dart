import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';

import 'get_current_boat_id_use_case_test.mocks.dart';

@GenerateMocks([BoatService])
void main() {
  late BoatService boatService;
  late GetCurrentBoatIdUseCase getCurrentBoatIdUseCase;

  setUp(() {
    boatService = MockBoatService();
    getCurrentBoatIdUseCase = GetCurrentBoatIdUseCase(boatService);
  });

  group('GetCurrentBoatIdUseCase', () {
    test('gets current boat id', () {
      const currentBoatId = 'id';

      when(boatService.getCurrentBoatId()).thenReturn(currentBoatId);

      expect(getCurrentBoatIdUseCase(), currentBoatId);
    });

    test('reutrns null when id not present in store', () {
      when(boatService.getCurrentBoatId()).thenReturn(null);

      expect(getCurrentBoatIdUseCase(), null);
    });
  });
}
