import 'package:auth0_flutter/auth0_flutter.dart';

abstract class AuthService {
  Future<void> conntect({
    required String url,
    required String secret,
  });

  Future<void> connectToCameraClient({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
    String? secret,
  });

  Future<void> connectToAppViamClient({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
  });

  Future<void> checkConnection();

  Future<Credentials> authenticate({
    required String authDomain,
    required String clientId,
    required String audience,
    required String scheme,
  });

  Future<void> logout({
    required String authDomain,
    required String clientId,
    String? scheme,
  });
}
