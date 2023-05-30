import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';

@injectable
class ConnectAppServiceClinetUseCase {
  final AppViamService _appViamService;

  const ConnectAppServiceClinetUseCase(this._appViamService);

  Future<void> call(String? accessToken) async => _appViamService.connectToViamApp(accessToken: accessToken);
}
