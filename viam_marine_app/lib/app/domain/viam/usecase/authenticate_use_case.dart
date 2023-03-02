import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/viam/service/viam_service.dart';

@injectable
class AuthenticateUseCase {
  final ViamService _viamService;

  const AuthenticateUseCase(this._viamService);

  Future<Credentials> call({
    required String authDomain,
    required String clientId,
    required String audience,
    required String scheme,
  }) =>
      _viamService.authenticate(
        authDomain: authDomain,
        clientId: clientId,
        audience: audience,
        scheme: scheme,
      );
}
