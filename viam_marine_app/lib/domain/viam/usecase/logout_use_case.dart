import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/service/viam_service.dart';

@injectable
class LogoutUseCase {
  final ViamService _viamService;

  const LogoutUseCase(this._viamService);

  Future<void> call({
    required String authDomain,
    required String clientId,
    String? scheme,
  }) =>
      _viamService.logout(
        authDomain: authDomain,
        clientId: clientId,
        scheme: scheme,
      );
}
