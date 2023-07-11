import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_marine/utils/expired_token_checker.dart';

@injectable
class ConnectToAppViamUseCase extends ExpiredTokenChecker {
  final RobotManager _robotManager;

  const ConnectToAppViamUseCase(
    super._tokenExpiredBroadcaster,
    this._robotManager,
  );

  void call({required String accessToken}) =>
      super.checkExpiredToken(() => _robotManager.connectToAppViam(accessToken));
}
