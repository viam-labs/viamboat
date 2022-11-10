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
        false,
      );
}

@module
abstract class ViamCameraModule {
  @Named('camera')
  @singleton
  ViamSdk getViamSdk() => ViamSdk(
        'camera-main.xl6oiexz3d.local.viam.cloud',
        8080,
        '2824dhqonsdzjw09tphtlh7cvu1woushvvl4cofca4mviabh',
        true,
      );
}
