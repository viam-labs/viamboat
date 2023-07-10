// ignore_for_file: deprecated_member_use

import 'package:auth0_flutter/auth0_flutter.dart' as auth0;
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';

@injectable
class AuthDataSource {
  final RobotManager _robotManager;
  final auth0.Auth0 _auth0Client;

  const AuthDataSource(
    this._robotManager,
    this._auth0Client,
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

  Future<auth0.Credentials> login(
    String audience,
    String? scheme,
  ) =>
      _auth0Client.webAuthentication(scheme: scheme).login(audience: audience);

  Future<void> logout(String? scheme) => _auth0Client.webAuthentication(scheme: scheme).logout();

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
