import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamDataSource {
  final Viam _viam;

  const ViamDataSource(this._viam);

  Future<void> connect(
    String url,
    String? secret,
    int port,
    bool secure,
    bool disableWebRtc,
    String? accessToken,
  ) =>
      _viam.connect(
        url: url,
        port: port,
        secure: secure,
        disableWebRtc: disableWebRtc,
        payload: secret,
        accessToken: accessToken,
      );

  Future<Credentials> authenticate(
    String authDomain,
    String clientId,
    String audience,
    String? scheme,
  ) =>
      _viam.authenticate(
        authDomain,
        clientId,
        audience,
        scheme,
      );
}
