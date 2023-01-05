import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/usecase/check_connection_use_case.dart';

import 'check_connection_use_case_test.mocks.dart';

@GenerateMocks([BoatService])
void main() {
  late BoatService boatService;
  late CheckConnectionUseCase checkConnectionUseCase;

  setUp(() {
    boatService = MockBoatService();
    checkConnectionUseCase = CheckConnectionUseCase(boatService);
  });

  group('CheckConnectionUseCase', () {
    const address = 'address';
    const secret = 'secret';

    test('verify check connection', () async {
      await checkConnectionUseCase(address, secret);

      verify(boatService.checkConnection(address, secret));
    });

    test('returns error when there is no connection to the boat', () async {
      const error = 'error';

      when(boatService.checkConnection(address, secret)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(checkConnectionUseCase(address, secret), throwsA(error));
    });
  });
}
