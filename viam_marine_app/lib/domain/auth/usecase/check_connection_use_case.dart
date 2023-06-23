import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class CheckConnectionUseCase {
  final AuthService _authService;

  const CheckConnectionUseCase(this._authService);

  Future<void> call() => _authService.checkConnection();
}
