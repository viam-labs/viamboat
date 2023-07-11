import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/service/auth_service.dart';

@injectable
class ConnectToAnalyticsUseCase {
  final AuthService _authService;

  const ConnectToAnalyticsUseCase(this._authService);

  Future<void> call({
    required String url,
    String? token,
  }) async =>
      _authService.connectToAnalytics(
        url: url,
        token: token,
      );
}
