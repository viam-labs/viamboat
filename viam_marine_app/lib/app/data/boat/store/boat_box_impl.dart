import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/store/boat_box.dart';

const boxName = 'ViamboatBox';

@Singleton(as: BoatBox)
class CurrentBoatBoxImpl implements BoatBox {
  Future<Box> _openBox() => Hive.openBox<ViamBoat>(boxName);

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
  Future<List<ViamBoat>> read() async {
    final box = await _openBox();
    return box.values.toList() as List<ViamBoat>;
  }

  @override
  Future<void> write({required String key, required ViamBoat value}) async {
    final box = await _openBox();
    return box.put(key, value);
  }
}
