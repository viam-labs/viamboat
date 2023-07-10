import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FlutterSecureStorageModule {
  @singleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();
}
