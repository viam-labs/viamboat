import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AnalyticsDataSink)
class AnalyticsDataSinkImpl extends AnalyticsDataSink {
  final FirebaseAnalytics _analytics;

  AnalyticsDataSinkImpl(this._analytics);

  @override
  Future<void> logEvent({
    required String name,
    Map<String, Object?>? parameters,
  }) =>
      _analytics.logEvent(
        name: name,
        parameters: parameters,
      );
}

abstract class AnalyticsDataSink {
  Future<void> logEvent({
    required String name,
    Map<String, Object?>? parameters,
  });
}
