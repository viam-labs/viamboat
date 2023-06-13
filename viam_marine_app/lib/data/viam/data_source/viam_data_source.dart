import 'package:auth0_flutter/auth0_flutter.dart' as auth0;
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ViamDataSource {
  final Viam _viam;
  final RobotManager _robotManager;

  const ViamDataSource(
    @Named(ViamConstants.sdkClientName) this._viam,
    this._robotManager,
  );

  Future<void> connect(
    String url,
    String? secret,
    int port,
    bool secure,
    bool disableWebRtc,
    String? accessToken,
  ) async {
    // await _viam.connect(
    //   url: url,
    //   port: port,
    //   secure: secure,
    //   disableWebRtc: disableWebRtc,
    //   payload: secret,
    //   accessToken: accessToken,
    // );

    await _robotManager.connectToRobot(
      url,
      secret,
      port,
      secure,
      disableWebRtc,
      accessToken,
    );
  }

  Future<auth0.Credentials> authenticate(
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

  Future<void> logout(
    String domain,
    String clientId,
    String? scheme,
  ) =>
      _viam.logout(domain, clientId, scheme);
}
