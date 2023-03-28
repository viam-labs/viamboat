import 'package:viam_marine/domain/boat/model/viam_boat.dart';

abstract class BoatBox {
  Future<List<ViamBoat>> read();

  Future<bool> containsKey({required String key});

  Future<void> write({required String key, required ViamBoat value});

  Future<void> delete({required String key});
}
