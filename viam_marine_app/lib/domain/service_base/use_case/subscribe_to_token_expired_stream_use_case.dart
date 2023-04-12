import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';

@injectable
class SubscribeToTokenExpiredStreamUseCase {
  final TokenExpiredBroadcaster _tokenExpiredBroadcaster;

  SubscribeToTokenExpiredStreamUseCase(this._tokenExpiredBroadcaster);

  Stream<TokenExpiredEvent> call() => _tokenExpiredBroadcaster.getRefreshStream();
}
