import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class ConnectToRobotUseCase {
  final AuthService _authService;

  const ConnectToRobotUseCase(this._authService);

  Future<void> call({
    required String url,
    required String secret,
  }) =>
      _authService.conntect(
        url: url,
        secret: secret,
      );
}
