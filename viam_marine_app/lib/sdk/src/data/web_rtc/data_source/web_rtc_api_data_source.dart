import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/google/rpc/status.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pbgrpc.dart';
import 'package:viam_marine/sdk/src/di/di.dart';

class WebRtcApiDataSource {
  final ViamClientChannel _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  WebRtcApiDataSource(this._client, this._authHeaderInterceptor);

  Future<ResponseStream<CallResponse>> getResponseStream(String sdp) async {
    final metaData = {
      'rpc-host': _client.url,
    };

    final stub = SignalingServiceClient(
      _client,
      options: CallOptions(
        metadata: metaData,
      ),
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    final request = CallRequest(sdp: sdp);

    final call = stub.call(
      request,
      options: CallOptions(
        metadata: metaData,
        providers: [_authHeaderInterceptor.optionsProvider],
      ),
    );

    return call;
  }

  Future<void> update(String uuid) async {
    final metaData = {
      'rpc-host': _client.url,
    };

    final stub = SignalingServiceClient(
      _client,
      options: CallOptions(
        metadata: metaData,
      ),
      interceptors: _client.payload != null ? [_authHeaderInterceptor] : [],
    );

    final updateRequest = CallUpdateRequest(
      uuid: uuid,
    );

    await stub.callUpdate(updateRequest);
  }

  Future<void> sendError(String uuid, String msg) async {
    final metaData = {
      'rpc-host': 'camera-main.xl6oiexz3d.local.viam.cloud',
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

  Future<void> updatePr(ICECandidate cand, String uuid) async {
    final metaData = {
      'rpc-host': 'camera-main.xl6oiexz3d.local.viam.cloud',
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
}
