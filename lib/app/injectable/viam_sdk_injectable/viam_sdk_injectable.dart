import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  @Named('sensor')
  @singleton
  ViamSdk getViamSdk() => ViamSdk(
        'localhost',
        8081,
        null,
      );
}

@module
abstract class ViamCameraModule {
  @Named('camera')
  @singleton
  ViamSdk getViamSdk() => ViamSdk(
        'camera-main.to5iytcwxn.local.viam.cloud',
        8080,
        'gacc9lht600wz9mcpf45b4optb1ahhrwjs7fttmvjcr1lpgz',
      );
}
