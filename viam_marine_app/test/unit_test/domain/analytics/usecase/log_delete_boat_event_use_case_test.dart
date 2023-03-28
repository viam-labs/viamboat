import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/analytics/service/analytics_service.dart';
import 'package:viam_marine/domain/analytics/usecase/log_delete_boat_event_use_case.dart';

import 'log_delete_boat_event_use_case_test.mocks.dart';

@GenerateMocks([AnalyticsService])
void main() {
  late AnalyticsService analyticsService;
  late LogDeleteBoatEventUseCase logDeleteBoatEventUseCase;

  setUp(() {
    analyticsService = MockAnalyticsService();
    logDeleteBoatEventUseCase = LogDeleteBoatEventUseCase(analyticsService);
  });

  group('LogDeleteBoatEventUseCase', () {
    test('logs deleteBoatEvent successfully', () async {
      const id = 'id';
      const name = 'name';
      const address = 'address';

      await logDeleteBoatEventUseCase(
        id: id,
        address: address,
        name: name,
      );

      verify(analyticsService.logDeleteBoatEvent(id: id, name: name, address: address));
    });
  });
}
