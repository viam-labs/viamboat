import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/auth/store/token_box.dart';
import 'package:viam_marine/domain/auth/store/token_store.dart';

const tokenKey = 'tokenKey';
const refreshTokenKey = 'refreshTokenKey';

@Injectable(as: TokenStore)
class TokenStoreImpl implements TokenStore {
  final TokenBox _storage;

  TokenStoreImpl(this._storage);

  @override
  Future<void> clearAll() => _storage.deleteAll();

  @override
  Future<String?> getRefreshTokenOrNull() => _storage.read(key: refreshTokenKey);

  @override
  Future<String?> getTokenOrNull() => _storage.read(key: tokenKey);

  @override
  Future<bool> hasToken() async {
    final bool hasToken = await _storage.containsKey(key: tokenKey);
    final bool hasRefreshToken = await _storage.containsKey(key: refreshTokenKey);

    return hasToken && hasRefreshToken;
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) => _storage.write(
        key: refreshTokenKey,
        value: refreshToken,
      );

  @override
  Future<void> saveToken(String token) => _storage.write(
        key: tokenKey,
        value: token,
      );
}
