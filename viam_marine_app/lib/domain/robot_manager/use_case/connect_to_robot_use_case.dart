import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_marine/utils/expired_token_checker.dart';

@injectable
class ConnectToRobotUseCase extends ExpiredTokenChecker {
  final RobotManager _robotManager;

  const ConnectToRobotUseCase(
    super._tokenExpiredBroadcaster,
    this._robotManager,
  );

  Future<void> call({
    required String url,
    required String secret,
  }) async =>
      super.checkExpiredToken(() => _robotManager.connectToRobot(url, secret));
}
