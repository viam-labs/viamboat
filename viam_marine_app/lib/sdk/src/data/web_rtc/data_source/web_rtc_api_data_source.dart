import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/google/rpc/status.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/stream/v1/stream.pbgrpc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';

class WebRtcApiDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  WebRtcApiDataSource(this._client, this._authHeaderInterceptor);

  Future<ResponseStream<CallResponse>> getResponseStream(String sdp) async {
    //TODO: REPLACE CREDS
    final metaData = {
      'rpc-host': 'camera-main.aebrlgme8d.viam.cloud',
    };

    final stub = SignalingServiceClient(
      _client,
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
      options: CallOptions(
        metadata: metaData,
      ),
    );

    final request = CallRequest(sdp: sdp);

    final call = stub.call(
      request,
      // options: CallOptions(
      //   providers: [_authHeaderInterceptor.optionsProvider],
      // ),
    );

    return call;
  }

  Future<void> update(String uuid, {bool done = false}) async {
    //TODO: REPLACE CREDS
    final metaData = {
      'rpc-host': 'camera-main.aebrlgme8d.viam.cloud',
    };

    final stub = SignalingServiceClient(
      _client,
      options: CallOptions(
        metadata: metaData,
      ),
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    late CallUpdateRequest updateRequest;
    if (done) {
      updateRequest = CallUpdateRequest(
        uuid: uuid,
        done: true,
      );
    } else {
      updateRequest = CallUpdateRequest(
        uuid: uuid,
      );
    }

    await stub.callUpdate(updateRequest);
  }

  Future<void> sendError(String uuid, String msg) async {
    //TODO: REPLACE CREDS
    final metaData = {
      'rpc-host': 'camera-main.aebrlgme8d.viam.cloud',
    };

    final stub = SignalingServiceClient(
      _client,
      options: CallOptions(
        metadata: metaData,
      ),
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    final updateRequest = CallUpdateRequest(uuid: uuid, error: Status(message: msg));

    await stub.callUpdate(updateRequest);
  }

  Future<void> updateICECandidate(ICECandidate cand, String uuid) async {
    //TODO: REPLACE CREDS
    final metaData = {
      'rpc-host': 'camera-main.aebrlgme8d.viam.cloud',
    };

    final stub = SignalingServiceClient(
      _client,
      options: CallOptions(
        metadata: metaData,
      ),
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    final updateRequest = CallUpdateRequest(uuid: uuid, candidate: cand);

    await stub.callUpdate(updateRequest);
  }

  Future<void> addStreamName(String name) async {
    final stub = StreamServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final updateRequest = AddStreamRequest(name: name);

    await stub.addStream(updateRequest);
  }
}

// final updateRequest = AddStreamRequest(name: 'camera');
// final updateRequestBinary = updateRequest.writeToBuffer();
// await dataChannel?.send(
//   RTCDataChannelMessage.fromBinary(updateRequestBinary),
// );
//
// try {
//   await dataChannel?.send(
//     RTCDataChannelMessage.fromBinary(updateRequestBinary),
//   );
// } catch (error) {
//   print(error);
// }
