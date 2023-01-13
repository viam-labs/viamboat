abstract class AnalyticsService {
  Future<void> logOpenAppEvent();

  Future<void> logAddBoatEvent({
    required String id,
    required String name,
    required String address,
  });

  Future<void> logDeleteBoatEvent({
    required String id,
    required String name,
    required String address,
  });
}
