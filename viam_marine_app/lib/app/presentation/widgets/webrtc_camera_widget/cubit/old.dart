// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

//ignore: depend_on_referenced_packages
import 'package:fixnum/fixnum.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
//import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart' show ClientChannel, ClientConnection, GrpcMessage;
import 'package:grpc/src/client/channel.dart' as kamil;
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/grpc.pb.dart' as grp;
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/stream/v1/stream.pbgrpc.dart';

import 'package:viam_marine/sdk/src/viam_sdk.dart';

typedef void StreamStateCallback(MediaStream stream);
typedef ClientStream? TransportFactory(CallOptions opt);
// MaxStreamCount is the max number of streams a channel can have.
const MaxStreamCount = 256;

abstract class Channel0 extends kamil.ClientChannel {
  void close();
}

class WebRtcClientChannel0 extends Channel0 {
  final RTCPeerConnection peerConnection;
  final RTCDataChannel? dataChannel;

  static const int maxStreamCount = 256;
  int streamIdCounter = 0;
  Map<int, ClientStream<dynamic, dynamic>> activeStreams = {};
  StreamController<ConnectionState> connectionStateStreamController = StreamController.broadcast();

  WebRtcClientChannel0(this.peerConnection, this.dataChannel);

  @override
  void close() {
    // TODO: implement close
  }

  @override
  ClientCall<Q, R> createCall<Q, R>(ClientMethod<Q, R> method, Stream<Q> requests, CallOptions options) {
    final newStream = getNewStream();

    var activeStream = activeStreams[newStream.id.toInt()];

    activeStream ??= ClientStream<Q, R>(this, newStream, method, requests, options);

    return activeStream as ClientStream<Q, R>;
  }

  @override
  Future<void> shutdown() {
    // TODO: implement shutdown
    throw UnimplementedError();
  }

  @override
  Future<void> terminate() {
    // TODO: implement terminate
    throw UnimplementedError();
  }

  void writeHeaders(grp.Stream stream, grp.RequestHeaders headers) {
    grp.Request request = grp.Request(stream: stream, headers: headers);
    final buf = request.writeToBuffer();
    write(buf);
  }

  void write(Uint8List msg) => dataChannel?.send(RTCDataChannelMessage.fromBinary(msg));

  grp.Stream getNewStream() => grp.Stream(id: Int64(0));

  @override
  Stream<ConnectionState> get onConnectionStateChanged => connectionStateStreamController.stream;

  void addEvent() => connectionStateStreamController.add(ConnectionState.ready);
}

class ClientStream<Q, R> extends ClientCall<Q, R> {
  final WebRtcClientChannel0 channel;
  final ClientMethod<Q, R> method;
  final Stream<Q> requests;
  final CallOptions options;
  final grp.Stream stream;

  ClientStream(this.channel, this.stream, this.method, this.requests, this.options,) : super(method, requests, options) {
    channel.onConnectionStateChanged.listen((event) {
      if (event == ConnectionState.ready) {
        start();
      }
    });

    channel.addEvent();
  }

  void start() {
    final methodName = method.path;
    // final methodName = '/${method.path}';
    grp.RequestHeaders requestHeaders = grp.RequestHeaders(
      method: methodName,
    );

    try {
      channel.writeHeaders(stream, requestHeaders);
    } catch (err) {
      print(err);
    }
  }

  @override
  void onConnectionReady(ClientConnection connection) {
    print('ClientStream connection rdy');
  }

  void onResponse(grp.Response resp) {
    print(resp);
  }
}

// interface activeClienStream {
// cs: ClientStream;
// }

class activeClienStream {
  ClientStream? cs;

  activeClienStream(this.cs);
}

class ViamWebRtcClientChannel extends ViamWebRtcBaseChannel {
  Int64 streamIDCounter = Int64(0);
  Map<Int64, activeClienStream> streams = {};

  ViamWebRtcClientChannel(RTCPeerConnection pc, RTCDataChannel dc) : super(pc, dc) {
    dc.onMessage = (message) => onChannelMessage(message);

    peerConn.onIceConnectionState = (state) {
      if (!(state == RTCIceConnectionState.RTCIceConnectionStateFailed ||
          state == RTCIceConnectionState.RTCIceConnectionStateDisconnected ||
          state == RTCIceConnectionState.RTCIceConnectionStateClosed)) {
        return;
      }
      onConnectionTerminated();
    };

    dc.onDataChannelState = (state) {
      if (state == RTCDataChannelState.RTCDataChannelClosed) {
        onConnectionTerminated();
      }
    };
  }

  TransportFactory transportFactory() {
    return (CallOptions opts) => newStream(nextStreamID(), opts);

    // return (opts: grpc.TransportOptions) => {
    // return this.newStream(this.nextStreamID(), opts);
    // }
  }

  void onConnectionTerminated() {
    // we may call this twice but we know closed will be true at this point.
    closeWithReason(Exception("data channel closed"));
    streams.forEach((key, value) {
      value.cs?.cancel();
    });

    // for (final streamId in streams.keys) {
    //   const stream = streams[streamId]!;
    //   stream.cs.closeWithRecvError(err);
    // }
  }

  void onChannelMessage(dynamic event) {
    late grp.Response res;
    try {
      res = grp.Response.fromBuffer(event.da);
      print(res);
    } catch (e) {
      print(e);
    }

    final stream = res.stream;

    final id = stream.id;
    final activeStream = streams[id];
    if (activeStream == null) {
      print('activeStream is null');
      return;
    }
    // if (activeStream == undefined) {
    // console.error("no stream for id; discarding", "id", id);
    // return;
    // }
    activeStream.cs?.onResponse(res);
  }

  grp.Stream nextStreamID() {
    final stream = grp.Stream();
    stream.id = streamIDCounter++;
    return stream;
  }

  ClientStream? newStream(grp.Stream stream, CallOptions opts) {
    if (isClosed()) {
      throw Exception('FailingClientStream(new ConnectionClosedError("connection closed"), opts)');
      //return new FailingClientStream(new ConnectionClosedError("connection closed"), opts);
    }

    activeClienStream? activeStream = streams[stream.id];

    if (activeStream == null) {
      if (streams.length > MaxStreamCount) {
        throw Exception('FailingClientStream(new Error("stream limit hit"), opts)');
      }
      print('LINE 634: Create client stream //final clientStream = ClientStream();');
      //final clientStream = ClientStream();
      // activeStream = activeClienStream(clientStream);
      // streams[stream.id] = activeStream;
    }
    return activeStream?.cs;
  }

  void removeStreamByID(num id) {
    print('removeStreamByID');
  }

  void writeHeaders(grp.Stream stream, grp.RequestHeaders headers) {
    final request = grp.Request();
    request.stream = stream;
    request.headers = headers;
    write(request);
  }

  void writeMessage(grp.Stream stream, grp.RequestMessage msg) {
    final request = grp.Request();
    request.stream = stream;
    request.message = msg;
    write(request);
  }

  void writeReset(grp.Stream stream) {
    final request = grp.Request();
    request.stream = stream;
    request.rstStream = true;
    write(request);
  }
}

class ViamWebRtcBaseChannel {
  final Completer ready = Completer();

  final RTCPeerConnection peerConn;
  final RTCDataChannel dataChannel;

  final Completer pResolve = Completer<dynamic>();
  final Completer pReject = Completer<dynamic>();

  bool closed = false;
  Exception? closedReason;

  final maxDataChannelSize = 16384;

  ViamWebRtcBaseChannel(this.peerConn, this.dataChannel) {
    //   await pResolve.future;
    //
    // this.ready = new Promise<unknown>((resolve, reject) => {
    // this.pResolve = resolve;
    // this.pReject = reject;
    //});

    dataChannel.onMessage = (msg) {
      final buf = msg.binary;

      final resp = grp.Response.fromBuffer(buf);

      print("dataChannel message: ${resp.toString()}");
    };

    dataChannel.onDataChannelState = (state) {
      // dataChannel.onopen = () => this.onChannelOpen();
      // dataChannel.onclose = () => this.onChannelClose();
      // dataChannel.onerror = (ev: Event) => this.onChannelError(ev as RTCErrorEvent);
      if (state == RTCDataChannelState.RTCDataChannelOpen) {
        onChannelOpen();
      }
      print(state);
    };

    peerConn.onIceConnectionState = (state) {
      print(state);
      if (!(state == RTCIceConnectionState.RTCIceConnectionStateFailed ||
          state == RTCIceConnectionState.RTCIceConnectionStateDisconnected ||
          state == RTCIceConnectionState.RTCIceConnectionStateClosed)) {
        return;
      }
      pReject.complete(Exception('ICE connection failed with state: ${state}'));
    };
  }

  void close() {
    closeWithReason(Exception('undefined'));
  }

  bool isClosed() {
    return closed;
  }

  bool isClosedReason() {
    return closedReason != null;
  }

  void closeWithReason(Exception err) {
    if (this.closed) {
      return;
    }
    this.closed = true;
    this.closedReason = err;
    this.peerConn.close();
  }

  void onChannelOpen() {
    pResolve.complete();
  }

  void onChannelClose() {
    closeWithReason(Exception('Forced close'));
  }

  void onChannelError(Exception ev) {
    closeWithReason(ev);
  }

  void write(grp.Request msg) {
    final msgRtc = RTCDataChannelMessage.fromBinary(msg.writeToBuffer());
    dataChannel.send(msgRtc);
  }
}

// class FailingClientStream implements grpc.Transport {
//   private readonly
//
//   err
//
//       :
//
//   Error
//
//   ;
//
//   private readonly
//
//   opts
//
//       :
//
//   grpc.TransportOptions
//
//   ;
//
//   constructor
//
//   (
//
//   err
//
//       :
//
//   Error
//
//   ,
//
//   opts
//
//       :
//
//   grpc.TransportOptions
//
//   ) {
//   this.err = err;
//   this.opts = opts;
//   }
//
//   public start() {
//     if (this.opts.onEnd) {
//       setTimeout(() => this.opts.onEnd(this.err));
//     }
//   }
//
//   public sendMessage() {}
//
//   public finishSend() {}
//
//   public cancel() {}
// }
