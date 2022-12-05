import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/current_boat.dart';
import 'package:viam_marine/app/domain/boat/store/current_boat_box.dart';

const boxName = 'ViamboatBox';

@Singleton(as: CurrentBoatBox)
class CurrentBoatBoxImpl implements CurrentBoatBox {
  Future<Box> _openBox() => Hive.openBox(boxName);

  @override
  Future<bool> containsKey({required String key}) async {
    final box = await _openBox();
    return box.containsKey(key);
  }

  @override
  Future<void> deleteAll() async {
    final box = await _openBox();
    await box.clear();
  }

  @override
  Future<CurrentBoat?> read({required String key}) async {
    final box = await _openBox();
    return box.get(key);
  }

  @override
  Future<void> write({required String key, required CurrentBoat value}) async {
    final box = await _openBox();
    return box.put(key, value);
  }
}
