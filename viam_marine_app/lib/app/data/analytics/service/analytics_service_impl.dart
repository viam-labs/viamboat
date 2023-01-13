import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/analytics/data_sink/analytics_data_sink.dart';
import 'package:viam_marine/app/domain/analytics/model/analytics_event.dart';
import 'package:viam_marine/app/domain/analytics/service/analytics_service.dart';

@Injectable(as: AnalyticsService)
class AnalyticsServiceImpl extends AnalyticsService {
  final AnalyticsDataSink _analyticsDataSink;

  AnalyticsServiceImpl(this._analyticsDataSink);

  @override
  Future<void> logOpenAppEvent() => _analyticsDataSink.logEvent(
        name: AnalyticsEvent.openApp.name,
      );

  @override
  Future<void> logAddBoatEvent({
    required String id,
    required String name,
    required String address,
  }) =>
      _analyticsDataSink.logEvent(
        name: AnalyticsEvent.addBoat.name,
        parameters: {
          'id': id,
          'boat_name': name,
          'address': address,
        },
      );

  @override
  Future<void> logDeleteBoatEvent({
    required String id,
    required String name,
    required String address,
  }) =>
      _analyticsDataSink.logEvent(
        name: AnalyticsEvent.deleteBoat.name,
        parameters: {
          'id': id,
          'boat_name': name,
          'address': address,
        },
      );
}
