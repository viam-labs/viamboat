import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/analytics/service/analytics_service.dart';

@injectable
class LogAddBoatEventUseCase {
  final AnalyticsService _analyticsService;

  const LogAddBoatEventUseCase(this._analyticsService);

  Future<void> call({
    required String id,
    required String name,
    required String address,
  }) =>
      _analyticsService.logAddBoatEvent(
        id: id,
        address: address,
        name: name,
      );
}
