import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/service/viam_service.dart';

@injectable
class ConnectToCameraClientUseCase {
  final ViamService _viamService;

  const ConnectToCameraClientUseCase(this._viamService);

  Future<void> call({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
    String? secret,
  }) =>
      _viamService.connectToCameraClient(
        url: url,
        disableWebRtc: disableWebRtc,
        accessToken: accessToken,
        secret: secret,
      );
}
