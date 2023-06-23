import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class ConnectToAppViamUseCase {
  final AuthService _authService;

  const ConnectToAppViamUseCase(this._authService);

  Future<void> call({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
  }) =>
      _authService.connectToAppViamClient(
        url: url,
        disableWebRtc: disableWebRtc,
        accessToken: accessToken,
      );
}
