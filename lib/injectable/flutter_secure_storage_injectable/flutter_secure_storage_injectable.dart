import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/injectable/flutter_secure_storage_injectable/flutter_secure_storage_injectable.mocks.dart';
import 'package:viam_marine/injectable/staging_environment.dart';

@GenerateMocks([FlutterSecureStorage])
@module
abstract class FlutterSecureStorageModule {
  @lazySingleton
  @dev
  @prod
  @staging
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @singleton
  @test
  FlutterSecureStorage get testSecureStorage => MockFlutterSecureStorage();
}
