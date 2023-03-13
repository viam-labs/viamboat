abstract class TokenStore {
  Future<void> saveToken(String token);

  Future<void> saveRefreshToken(String refreshToken);

  Future<void> clearAll();

  Future<String?> getTokenOrNull();

  Future<bool> hasToken();

  Future<String?> getRefreshTokenOrNull();
}
