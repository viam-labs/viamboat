import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc.dart';
import 'package:collection/collection.dart';

import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/grpc.pb.dart' as grpc;

class WebRtcTransportStream extends GrpcTransportStream {
  final RTCPeerConnection rtcPeerConnection;
  final RTCDataChannel dataChannel;
  final grpc.Request headersRequest;
  bool headersSent = false;

  final StreamController<List<int>> _outgoingMessages = StreamController<List<int>>();
  final StreamController<GrpcMessage> _incomingMessages = StreamController();

  @override
  Stream<GrpcMessage> get incomingMessages => _incomingMessages.stream;

  @override
  StreamSink<List<int>> get outgoingMessages => _outgoingMessages.sink;

  WebRtcTransportStream(
    this.rtcPeerConnection,
    this.dataChannel,
    this.headersRequest,
  ) {
    _listenToOutgoingMessages();
    _listenToDataChannel();
  }

  @override
  Future<void> terminate() async {
    await _incomingMessages.close();
    await _outgoingMessages.close();
  }

  void _listenToOutgoingMessages() {
    _outgoingMessages.stream.listen((List<int> data) {
      final payloadRequest = grpc.Request(
        stream: headersRequest.stream,
        message: grpc.RequestMessage(
          hasMessage: true,
          eos: true,
          packetMessage: grpc.PacketMessage(
            data: data,
            eom: true,
          ),
        ),
      );
      if (!headersSent) {
        headersSent = true;
        dataChannel.send(RTCDataChannelMessage.fromBinary(headersRequest.writeToBuffer()));
      }
      dataChannel.send(RTCDataChannelMessage.fromBinary(payloadRequest.writeToBuffer()));
    });
  }

  void _listenToDataChannel() {
    dataChannel.onMessage = (RTCDataChannelMessage data) {
      final response = grpc.Response.fromBuffer(data.binary);

      final headers = response.headers;
      final trailers = response.trailers;
      final message = response.message;

      final type = response.whichType();

      switch (type) {
        case grpc.Response_Type.headers:
          _incomingMessages.add(
            GrpcMetadata(
              headers.metadata.md.map(
                (key, value) => MapEntry(
                  key,
                  value.values.firstOrNull ?? '',
                ),
              ),
            ),
          );
          break;
        case grpc.Response_Type.message:
          _incomingMessages.add(GrpcData(message.packetMessage.data, isCompressed: false));
          break;
        case grpc.Response_Type.trailers:
          _incomingMessages.add(GrpcMetadata({
            'grpc-status': trailers.status.code.toString(),
            'grpc-message': trailers.status.message,
          }));
          _incomingMessages.close();
          break;
        case grpc.Response_Type.notSet:
          break;
      }
    };
  }
}
