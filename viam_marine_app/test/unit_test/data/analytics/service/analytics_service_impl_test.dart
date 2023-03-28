import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/data/analytics/data_sink/analytics_data_sink.dart';
import 'package:viam_marine/data/analytics/service/analytics_service_impl.dart';
import 'package:viam_marine/domain/analytics/model/analytics_event.dart';
import 'package:viam_marine/domain/analytics/service/analytics_service.dart';

import 'analytics_service_impl_test.mocks.dart';

@GenerateMocks([AnalyticsDataSink])
void main() {
  late AnalyticsDataSink analyticsDataSink;
  late AnalyticsService analyticsService;

  setUp(() {
    analyticsDataSink = MockAnalyticsDataSink();
    analyticsService = AnalyticsServiceImpl(analyticsDataSink);
  });

  group('AnalyticsService', () {
    const id = 'id';
    const address = 'address';
    const name = 'name';

    const parameters = {
      'id': id,
      'boat_name': name,
      'address': address,
    };

    test('verify logOpenAppEvent on analyticsDataSink', () async {
      await analyticsService.logOpenAppEvent();

      verify(analyticsDataSink.logEvent(name: AnalyticsEvent.openApp.name));
    });

    test('verify logAddBoatEvent on analyticsDataSink', () async {
      await analyticsService.logAddBoatEvent(
        id: id,
        name: name,
        address: address,
      );

      verify(analyticsDataSink.logEvent(
        name: AnalyticsEvent.addBoat.name,
        parameters: parameters,
      ));
    });

    test('verify logDeleteBoatEvent on analyticsDataSink', () async {
      await analyticsService.logDeleteBoatEvent(
        id: id,
        name: name,
        address: address,
      );

      verify(analyticsDataSink.logEvent(
        name: AnalyticsEvent.deleteBoat.name,
        parameters: parameters,
      ));
    });
  });
}
