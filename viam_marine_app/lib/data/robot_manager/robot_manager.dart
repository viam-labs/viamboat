import 'package:injectable/injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

@singleton
class RobotManager {
  late RobotClient _webrtcRobotClient;

  Future<void> connectToRobot(
    String url,
    String? secret,
    int port,
    bool secure,
    bool disableWebRtc,
    String? accessToken,
  ) async {
    _webrtcRobotClient = await RobotClient.atAddress(
      url,
      RobotClientOptions.withLocationSecret(secret!),
    );
  }

  RobotClient get webrtcRobotClient => _webrtcRobotClient;
}
