import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/analytics/service/analytics_service.dart';
import 'package:viam_marine/app/domain/analytics/usecase/log_add_boat_event_use_case.dart';

import 'log_add_boat_event_use_case_test.mocks.dart';

@GenerateMocks([AnalyticsService])
void main() {
  late LogAddBoatEventUseCase logAddBoatEventUseCase;
  late AnalyticsService analyticsService;

  setUp(() {
    analyticsService = MockAnalyticsService();
    logAddBoatEventUseCase = LogAddBoatEventUseCase(analyticsService);
  });

  group('LogAddBoatEventUseCase', () {
    test('logs addBoatEvent successfully', () async {
      const id = 'id';
      const name = 'name';
      const address = 'address';

      await logAddBoatEventUseCase(
        id: id,
        name: name,
        address: address,
      );

      verify(analyticsService.logAddBoatEvent(id: id, name: name, address: address));
    });
  });
}
