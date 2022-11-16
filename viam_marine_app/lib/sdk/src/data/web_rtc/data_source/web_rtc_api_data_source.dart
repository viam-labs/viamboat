import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pbgrpc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';

class WebRtcApiDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  WebRtcApiDataSource(this._client, this._authHeaderInterceptor);

  Future<dynamic> getCameraData() async {
    final stub = SignalingServiceClient(
      _client,
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    final request = CallRequest();

    //final call = stub.call(request);

    final signaling = SignalingServiceClient(_client);

    return;
  }
}
