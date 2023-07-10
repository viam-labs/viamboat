import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class LogoutUseCase {
  final AuthService _authService;

  const LogoutUseCase(this._authService);

  Future<void> call({String? scheme}) => _authService.logout(scheme: scheme);
}
