import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/analytics/service/analytics_service.dart';

@injectable
class LogDeleteBoatEventUseCase {
  final AnalyticsService _analyticsService;

  const LogDeleteBoatEventUseCase(this._analyticsService);

  Future<void> call({
    required String id,
    required String name,
    required String address,
  }) =>
      _analyticsService.logDeleteBoatEvent(
        id: id,
        address: address,
        name: name,
      );
}
