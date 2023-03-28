import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/service/viam_service.dart';

@injectable
class ConnectToRobotUseCase {
  final ViamService _viamService;

  const ConnectToRobotUseCase(this._viamService);

  Future<void> call({
    required String url,
    required int port,
    required bool secure,
    required bool disableWebRtc,
    String? secret,
    String? accessToken,
  }) =>
      _viamService.conntect(
        url: url,
        port: port,
        secure: secure,
        disableWebRtc: disableWebRtc,
        secret: secret,
        accessToken: accessToken,
      );
}
