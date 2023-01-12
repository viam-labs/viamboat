import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/analytics/service/analytics_service.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';

@injectable
class LogDeleteBoatEventUseCase {
  final AnalyticsService _analyticsService;

  const LogDeleteBoatEventUseCase(this._analyticsService);

  Future<void> call(ViamBoat boat) => _analyticsService.logDeleteBoatEvent(boat);
}
