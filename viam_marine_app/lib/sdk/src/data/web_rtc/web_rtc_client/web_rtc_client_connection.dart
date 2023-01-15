import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc.dart';

//ignore: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';

import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/grpc.pb.dart' as grpc;
import 'package:viam_marine/sdk/src/data/viam/google/protobuf/duration.pb.dart' as grpc_duration;
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/web_rtc_transport_stream.dart';

class WebRtcClientConnection extends ClientConnection {
  final RTCPeerConnection rtcPeerConnection;
  final RTCDataChannel dataChannel;

  WebRtcClientConnection(this.rtcPeerConnection, this.dataChannel);

  @override
  String get authority => "";

  @override
  set onStateChanged(void Function(ConnectionState p1) cb) {}

  @override
  String get scheme => "";

  @override
  void dispatchCall(ClientCall<dynamic, dynamic> call) {
    call.onConnectionReady(this);
  }

  @override
  GrpcTransportStream makeRequest(
    String path,
    Duration? timeout,
    Map<String, String> metadata,
    ErrorHandler onRequestFailure, {
    required CallOptions callOptions,
  }) {
    final stream = grpc.Stream(id: Int64(0));
    final grpMetadata = grpc.Metadata(md: metadata.map((key, value) => MapEntry(key, grpc.Strings(values: [value]))));
    final grpcTimeout = timeout != null
        ? grpc_duration.Duration(
            seconds: Int64(timeout.inSeconds),
            nanos: timeout.inMicroseconds * 1000,
          )
        : null;
    final headers = grpc.RequestHeaders(method: path, metadata: grpMetadata, timeout: grpcTimeout);
    final request = grpc.Request(stream: stream, headers: headers);
    return WebRtcTransportStream(rtcPeerConnection, dataChannel, request);
  }

  @override
  Future<void> shutdown() async {}

  @override
  Future<void> terminate() async {}
}
