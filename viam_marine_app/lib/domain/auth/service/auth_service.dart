abstract class AuthService {
  Future<void> login({
    required String audience,
    required String scheme,
  });

  Future<void> logout({String? scheme});
}
