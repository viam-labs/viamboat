import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';

@injectable
class SubcribeToTokenExpiredStreamUseCase {
  final TokenExpiredBroadcaster _tokenExpiredBroadcaster;

  SubcribeToTokenExpiredStreamUseCase(this._tokenExpiredBroadcaster);

  Stream<TokenExpiredEvent> call() => _tokenExpiredBroadcaster.getRefreshStream();
}
