import 'package:viam_marine/app/domain/boat/model/current_boat.dart';

abstract class CurrentBoatBox {
  Future<CurrentBoat?> read({required String key});

  Future<bool> containsKey({required String key});

  Future<void> write({required String key, required CurrentBoat value});

  Future<void> deleteAll();
}
