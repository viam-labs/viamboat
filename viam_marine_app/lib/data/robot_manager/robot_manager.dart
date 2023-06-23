import 'package:injectable/injectable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

@singleton
class RobotManager {
  final Viam cameraClient;
  final Viam appViamClient;
  late RobotClient webrtcRobotClient;

  RobotManager(
    @Named(ViamConstants.sdkClientName) this.cameraClient,
    @Named(ViamConstants.sdkDirectClientName) this.appViamClient,
  );

  Future<void> connectToRobot(
    String url,
    String secret,
  ) async {
    webrtcRobotClient = await RobotClient.atAddress(
      url,
      RobotClientOptions.withLocationSecret(secret),
    );
  }

//TODO: Migrate to new SDK when ready
  Future<void> connectWithViam(
    String url,
    bool disableWebRtc,
    String? token,
    String? secret,
  ) =>
      disableWebRtc
          ? appViamClient.connect(
              url: url,
              port: 443,
              secure: true,
              disableWebRtc: disableWebRtc,
              accessToken: token,
            )
          : cameraClient.connect(
              url: url,
              port: 8080,
              secure: true,
              disableWebRtc: disableWebRtc,
              accessToken: token,
            );

  Future<void> checkConnection() => webrtcRobotClient.refresh();
}
