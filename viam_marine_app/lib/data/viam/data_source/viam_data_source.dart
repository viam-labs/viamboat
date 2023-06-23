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
    String secret,
  ) =>
      _robotManager.connectToRobot(
        url,
        secret,
      );

  Future<void> checkConnection() => _robotManager.checkConnection();

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
      _viam.logout(
        domain,
        clientId,
        scheme,
      );

  Future<void> connectToCameraClient(
    String url,
    bool disableWebRtc,
    String? accessToken,
    String? secret,
  ) =>
      _robotManager.connectWithViam(
        url,
        disableWebRtc,
        accessToken,
        secret,
      );

  Future<void> connectToAppViamClient(
    String url,
    bool disableWebRtc,
    String? accessToken,
  ) =>
      _robotManager.connectWithViam(
        url,
        disableWebRtc,
        accessToken,
        null,
      );
}
