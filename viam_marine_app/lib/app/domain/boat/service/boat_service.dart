import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';

abstract class BoatService {
  Future<List<ViamBoat>> getBoats();

  Future<void> addNewBoat({
    required String id,
    required String name,
    required String address,
    required String secret,
  });

  Future<void> setCurrentBoatId(String id);

  String? getCurrentBoatId();

  Future<void> checkConnection(String address, String secret);
}
