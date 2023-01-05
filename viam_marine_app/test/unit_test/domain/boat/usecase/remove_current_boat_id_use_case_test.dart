import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/usecase/remove_current_boat_id_use_case.dart';

import 'remove_current_boat_id_use_case_test.mocks.dart';

@GenerateMocks([BoatService])
void main() {
  late BoatService boatService;
  late RemoveCurrentBoatIdUseCase removeCurrentBoatIdUseCase;

  setUp(() {
    boatService = MockBoatService();
    removeCurrentBoatIdUseCase = RemoveCurrentBoatIdUseCase(boatService);
  });

  group('RemoveCurrentBoatIdUseCase', () {
    test('removes current boat id', () async {
      await removeCurrentBoatIdUseCase();

      verify(boatService.removeCurrentBoatId());
    });
  });
}
