import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/data_source/web_rtc_client_connection.dart';

class WebRtcClientChannel extends ClientChannelBase {
  late RTCPeerConnection rtcPeerConnection;
  late RTCDataChannel dataChannel;

  WebRtcClientChannel(this.rtcPeerConnection, this.dataChannel);

  @override
  ClientConnection createConnection() {
    return WebRtcClientConnection(rtcPeerConnection, dataChannel);
  }
}