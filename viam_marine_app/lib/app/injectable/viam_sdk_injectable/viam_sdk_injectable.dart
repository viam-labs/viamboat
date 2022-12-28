import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  //TODO: REPLACE CREDS local
  @singleton
  ViamSdk getViamSdk() => ViamSdk(
        'camera-main.aebrlgme8d.local.viam.cloud',
        8080,
        'ch64unrm4ciye3v1s3th772pfh78w2xobbi6tlosxpacsj81',
        true,
      );
}
