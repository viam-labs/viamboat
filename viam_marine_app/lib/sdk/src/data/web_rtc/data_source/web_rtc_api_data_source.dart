import 'dart:convert';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/google/rpc/status.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pbgrpc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';

class WebRtcApiDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  RTCPeerConnection? pC;

  WebRtcApiDataSource(this._client, this._authHeaderInterceptor);

  Future<ResponseStream<CallResponse>> getCameraData(RTCPeerConnection peerConnection, String sdp) async {
    final stub = SignalingServiceClient(
      _client,
      options: CallOptions(
        metadata: {
          'rpc-host': 'camera-main.xl6oiexz3d.local.viam.cloud',
        },
      ),
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    final bytes = utf8.encode(sdp);
    final base64strSDP = base64.encode(bytes);

    final request = CallRequest(sdp: base64strSDP);

    final call = stub.call(
      request,
      options: CallOptions(
        metadata: {
          'rpc-host': 'camera-main.xl6oiexz3d.local.viam.cloud',
        },
        providers: [_authHeaderInterceptor.optionsProvider],
      ),
    );

    return call;

    // print(await call.first);

    // final callUpdateRequest = CallUpdateRequest(
    //   done: true,
    //   uuid: '',
    // );
    // final esa = await stub.callUpdate(
    //   callUpdateRequest,
    //   options: CallOptions(
    //     metadata: {
    //       'rpc-host': 'camera-main.xl6oiexz3d.local.viam.cloud',
    //     },
    //   ),
    // );

    // call.listen((value) {
    //   print(value);
    // });

    // final signaling = SignalingServiceClient(_client);
  }

  Future<void> update(RTCPeerConnection? peerConnection) async {
    final stub = SignalingServiceClient(
      _client,
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    pC = peerConnection;
    // await listener(stub);
  }

  Future<void> listener(SignalingServiceClient stub) async {
    pC?.onIceCandidate = (candidate) async {
      final callRequestUpdate = CallUpdateRequest(
        uuid: '',
        candidate: ICECandidate(
          candidate: candidate.candidate,
          sdpMid: candidate.sdpMid,
          sdpmLineIndex: candidate.sdpMLineIndex,
        ),
      );

      await stub.callUpdate(
        callRequestUpdate,
        options: CallOptions(
          metadata: {
            'rpc-host': 'camera-main.xl6oiexz3d.local.viam.cloud',
          },
        ),
      );
    };
  }
}
