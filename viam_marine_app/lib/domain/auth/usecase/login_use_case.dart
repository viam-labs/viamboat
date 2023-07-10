import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class LoginUseCase {
  final AuthService _authService;

  const LoginUseCase(this._authService);

  Future<void> call({
    required String audience,
    required String scheme,
  }) =>
      _authService.login(
        audience: audience,
        scheme: scheme,
      );
}
