import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class AuthenticateUseCase {
  final AuthService _authService;

  const AuthenticateUseCase(this._authService);

  Future<Credentials> call({
    required String authDomain,
    required String clientId,
    required String audience,
    required String scheme,
  }) =>
      _authService.authenticate(
        authDomain: authDomain,
        clientId: clientId,
        audience: audience,
        scheme: scheme,
      );
}
