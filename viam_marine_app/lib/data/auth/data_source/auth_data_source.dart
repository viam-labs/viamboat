import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthDataSource {
  final Auth0 _auth0Client;

  const AuthDataSource(this._auth0Client);

  Future<Credentials> login(
    String audience,
    String? scheme,
  ) =>
      _auth0Client.webAuthentication(scheme: scheme).login(audience: audience);

  Future<void> logout(String? scheme) => _auth0Client.webAuthentication(scheme: scheme).logout();
}
