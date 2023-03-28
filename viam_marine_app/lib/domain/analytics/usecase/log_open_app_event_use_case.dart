import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/analytics/service/analytics_service.dart';

@injectable
class LogOpenAppEventUseCase {
  final AnalyticsService _analyticsService;

  const LogOpenAppEventUseCase(this._analyticsService);

  Future<void> call() => _analyticsService.logOpenAppEvent();
}
