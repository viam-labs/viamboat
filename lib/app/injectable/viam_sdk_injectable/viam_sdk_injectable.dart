import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  @singleton
  ViamSdk getViamSdk() => ViamSdk('camera-main.xl6oiexz3d.local.viam.cloud');
}
