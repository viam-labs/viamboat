import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';

abstract class AnalyticsService {
  Future<void> logOpenAppEvent();

  Future<void> logAddBoatEvent(ViamBoat boat);

  Future<void> logDeleteBoatEvent(ViamBoat boat);
}
