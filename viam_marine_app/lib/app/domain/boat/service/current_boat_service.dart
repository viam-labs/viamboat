import 'package:viam_marine/app/domain/boat/model/current_boat.dart';

abstract class CurrentBoatService {
  Future<CurrentBoat?> getCurrentBoat();

  Future<void> setCurrentBoat({
    required String name,
    required String address,
    required String payload,
  });
}
