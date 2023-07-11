// ignore_for_file: deprecated_member_use

import 'package:injectable/injectable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

@singleton
class RobotManager {
  late Viam directClient;
  late RobotClient webrtcRobotClient;
  //TODO Remove when new SDK is ready
  late Viam analyticsClient;

  RobotManager(
    @Named(ViamConstants.sdkDirectClientName) this.analyticsClient,
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

  void connectToAppViam(
    String token,
  ) {
    directClient = Viam.withAccessToken(token);
  }

  StreamClient getStreamClient(String cameraName) => webrtcRobotClient.getStream(cameraName);

//TODO: Migrate to new SDK when ready
  Future<void> connectToAnalytics(
    String url,
    String? token,
  ) =>
      analyticsClient.connect(
        url: url,
        port: 443,
        secure: true,
        disableWebRtc: true,
        accessToken: token,
      );

  Future<void> checkConnection() => webrtcRobotClient.refresh();
}
