import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/service/boat_service.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';

import 'get_boats_use_case_test.mocks.dart';

@GenerateMocks([BoatService])
void main() {
  late BoatService boatService;
  late GetBoatsUseCase getBoatsUseCase;

  setUp(() {
    boatService = MockBoatService();
    getBoatsUseCase = GetBoatsUseCase(boatService);
  });

  group('GetBoatsUseCase', () {
    test('gets boats successfully from store.', () async {
      const boats = [
        ViamBoat(
          id: 'id',
        ),
      ];

      when(boatService.getBoats()).thenAnswer((_) async => boats);

      final actualAnswer = await getBoatsUseCase();

      expect(actualAnswer, equals(boats));
    });
  });
}
