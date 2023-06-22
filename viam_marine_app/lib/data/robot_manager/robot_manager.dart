import 'package:injectable/injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

@singleton
class RobotManager {
  late RobotClient webrtcRobotClient;

  Future<void> connectToRobot(
    String url,
    String secret,
  ) async {
    webrtcRobotClient = await RobotClient.atAddress(
      url,
      RobotClientOptions.withLocationSecret(secret),
    );
  }

  Future<void> checkConnection() => webrtcRobotClient.refresh();
}
