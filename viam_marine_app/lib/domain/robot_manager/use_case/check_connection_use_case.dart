import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/robot_manager_injectable/robot_manager_injectable.dart';
import 'package:viam_marine/utils/expired_token_checker.dart';

@injectable
class CheckConnectionUseCase extends ExpiredTokenChecker {
  final RobotManager _robotManager;

  const CheckConnectionUseCase(
    super._tokenExpiredBroadcaster,
    this._robotManager,
  );

  Future<void> call() async => super.checkExpiredToken(() => _robotManager.checkConnection());
}
