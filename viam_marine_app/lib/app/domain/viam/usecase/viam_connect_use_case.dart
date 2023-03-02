import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/viam/service/viam_service.dart';

@injectable
class ViamConnectUseCase {
  final ViamService _viamService;

  const ViamConnectUseCase(this._viamService);

  Future<void> call({
    required String url,
    required int port,
    required bool secure,
    required bool disableWebRtc,
    String? secret,
  }) =>
      _viamService.conntect(
        url: url,
        port: port,
        secure: secure,
        disableWebRtc: disableWebRtc,
      );
}
