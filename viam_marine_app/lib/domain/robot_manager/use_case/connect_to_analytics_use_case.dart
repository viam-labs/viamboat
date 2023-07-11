import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_marine/utils/expired_token_checker.dart';

@injectable
class ConnectToAnalyticsUseCase extends ExpiredTokenChecker {
  final RobotManager _robotManager;

  const ConnectToAnalyticsUseCase(
    super._tokenExpiredBroadcaster,
    this._robotManager,
  );

  Future<void> call({
    required String url,
    String? token,
  }) async =>
      super.checkExpiredToken(() => _robotManager.connectToAnalytics(url, token));
}
