import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/service/viam_service.dart';

@injectable
class ConnectToAppViamUseCase {
  final ViamService _viamService;

  const ConnectToAppViamUseCase(this._viamService);

  Future<void> call({
    required String url,
    required bool disableWebRtc,
    String? accessToken,
  }) =>
      _viamService.connectToAppViamClient(
        url: url,
        disableWebRtc: disableWebRtc,
        accessToken: accessToken,
      );
}
