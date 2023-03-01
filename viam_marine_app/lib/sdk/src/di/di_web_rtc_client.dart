part of 'di.dart';

Future<WebRtcClientChannel> _getWebRtcClient(ViamClientChannel webRtcDirectClient, String url, String? secure) async {
  final prefs = await _getSharedPreferencesInstance();
  final webRtcDirectDataSource = WebRtcApiDataSource(
    webRtcDirectClient,
    AuthHeaderInterceptor(
      ViamAuthServiceImpl(
        ViamAuthDataSource(webRtcDirectClient, url, secure),
        AuthenticateResponseToAuthDataMapper(),
      ),
      prefs,
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
