import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';

@injectable
class AuthDataSource {
  final RobotManager _robotManager;
  final Auth0 _auth0Client;

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

  Future<Credentials> login(
    String audience,
    String? scheme,
  ) =>
      _auth0Client.webAuthentication(scheme: scheme).login(audience: audience);

  Future<void> logout(String? scheme) => _auth0Client.webAuthentication(scheme: scheme).logout();

  Future<void> connectToAnalytics(String url, String? token) => _robotManager.connectToAnalytics(url, token);

  void connectToAppViam(String accessToken) => _robotManager.connectToAppViam(accessToken);
}
