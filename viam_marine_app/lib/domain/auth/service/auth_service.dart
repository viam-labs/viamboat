abstract class AuthService {
  Future<void> conntect({
    required String url,
    required String secret,
  });

  Future<void> connectToAppViamClient({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
  });

  Future<void> checkConnection();

  Future<void> login({
    required String audience,
    required String scheme,
  });

  Future<void> logout({String? scheme});
}
