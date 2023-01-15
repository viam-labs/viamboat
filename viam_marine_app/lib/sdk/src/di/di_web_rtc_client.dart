part of 'di.dart';

Future<WebRtcClientChannel> _getWebRtcClient(ViamClientChannel webRtcDirectClient, String url, String? secure) async {
  final webRtcDirectDataSource = WebRtcApiDataSource(
    webRtcDirectClient,
    AuthHeaderInterceptor(
      ViamAuthServiceImpl(
        ViamAuthDataSource(webRtcDirectClient, url, secure),
        AuthenticateResponseToAuthDataMapper(),
      ),
    ),
    url,
  );

  final webRtcPeerConnection = WebRtcPeerConnection(webRtcDirectDataSource);
  await webRtcPeerConnection.createConnection();

  return WebRtcClientChannel(
    webRtcPeerConnection.peerConnection,
    webRtcPeerConnection.dataChannel,
  );
}
