import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/analytics/service/analytics_service.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';

@injectable
class LogAddBoatEventUseCase {
  final AnalyticsService _analyticsService;

  const LogAddBoatEventUseCase(this._analyticsService);

  Future<void> call(ViamBoat boat) => _analyticsService.logAddBoatEvent(boat);
}
