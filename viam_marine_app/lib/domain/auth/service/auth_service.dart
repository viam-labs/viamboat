abstract class AuthService {
  Future<void> conntect({
    required String url,
    required String secret,
  });

  void connectToAppViam({required String accessToken});

  Future<void> connectToAnalytics({required String url, String? token});

  Future<void> checkConnection();

  Future<void> login({
    required String audience,
    required String scheme,
  });

  Future<void> logout({String? scheme});
}
