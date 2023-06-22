import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/service/viam_service.dart';

@injectable
class ConnectToRobotUseCase {
  final ViamService _viamService;

  const ConnectToRobotUseCase(this._viamService);

  Future<void> call({
    required String url,
    required String secret,
  }) =>
      _viamService.conntect(
        url: url,
        secret: secret,
      );
}
