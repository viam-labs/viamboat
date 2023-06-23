import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class ConnectToCameraClientUseCase {
  final AuthService _authService;

  const ConnectToCameraClientUseCase(this._authService);

  Future<void> call({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
    String? secret,
  }) =>
      _authService.connectToCameraClient(
        url: url,
        disableWebRtc: disableWebRtc,
        accessToken: accessToken,
        secret: secret,
      );
}
