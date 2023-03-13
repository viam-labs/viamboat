import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

const boxName = 'ViamTokenBox';

abstract class TokenBox {
  Future<String?> read({required String key});

  Future<bool> containsKey({required String key});

  Future<void> write({required String key, required String value});

  Future<void> deleteAll();
}

@Singleton(as: TokenBox)
class TokenBoxImpl implements TokenBox {
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
  Future<String?> read({required String key}) async {
    final box = await _openBox();

    return box.get(key);
  }

  @override
  Future<void> write({required String key, required String value}) async {
    final box = await _openBox();

    await box.put(key, value);
  }
}
