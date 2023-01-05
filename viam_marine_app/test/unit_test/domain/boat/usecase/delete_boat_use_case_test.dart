import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/usecase/delete_boat_use_case.dart';

import 'delete_boat_use_case_test.mocks.dart';

@GenerateMocks([BoatService])
void main() {
  late BoatService boatService;
  late DeleteBoatUseCase deleteBoatUseCase;

  setUp(() {
    boatService = MockBoatService();
    deleteBoatUseCase = DeleteBoatUseCase(boatService);
  });

  group('DeleteBoatUseCase', () {
    test('removes boat', () async {
      const id = 'id';
      await deleteBoatUseCase(id);
      verify(boatService.deleteBoat(id));
    });
  });
}
