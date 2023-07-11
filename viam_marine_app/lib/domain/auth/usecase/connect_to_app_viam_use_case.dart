import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class ConnectToAppViamUseCase {
  final AuthService _authService;

  const ConnectToAppViamUseCase(this._authService);

  void call({required String accessToken}) => _authService.connectToAppViam(
        accessToken: accessToken,
      );
}
