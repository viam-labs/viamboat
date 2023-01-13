import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/domain/analytics/service/analytics_service.dart';
import 'package:viam_marine/app/domain/analytics/usecase/log_open_app_event_use_case.dart';

import 'log_open_app_event_use_case_test.mocks.dart';

@GenerateMocks([AnalyticsService])
void main() {
  late LogOpenAppEventUseCase logOpenAppEventUseCase;
  late AnalyticsService analyticsService;

  setUp(() {
    analyticsService = MockAnalyticsService();
    logOpenAppEventUseCase = LogOpenAppEventUseCase(analyticsService);
  });

  group('LogOpenAppEventUseCase', () {
    test('logs openAppEvent successfully', () async {
      await logOpenAppEventUseCase();
      verify(analyticsService.logOpenAppEvent());
    });
  });
}
