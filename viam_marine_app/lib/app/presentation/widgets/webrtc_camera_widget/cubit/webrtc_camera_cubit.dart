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

abstract class Channel extends kamil.ClientChannel {
  void close();
}

class WebRtcClientChannel extends Channel {
  final RTCPeerConnection peerConnection;
  final RTCDataChannel? dataChannel;

  static const int maxStreamCount = 256;
  int streamIdCounter = 0;
  Map<int, ClientStream<dynamic, dynamic>> activeStreams = {};
  StreamController<ConnectionState> connectionStateStreamController = StreamController.broadcast();

  WebRtcClientChannel(this.peerConnection, this.dataChannel);

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
  final WebRtcClientChannel channel;
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

@injectable
class WebrtcCameraCubit extends Cubit<WebrtcCameraState> {
  final ViamSdk _viamSdk;

  final setRemoteCompleter = Completer();

  final RTCVideoRenderer rtcVideoRenderer = RTCVideoRenderer();
  RTCDataChannel? negotiationChannel;
  RTCDataChannel? dataChannel;
  RTCPeerConnection? peerConnection;
  RTCSessionDescription? offer;
  RTCSessionDescription? remoteSDP;
  ResponseStream<CallResponse>? _responseStream;
  MediaStream? remoteStream;
  StreamStateCallback? onAddRemoteStream;
  String uuid = '';
  bool sentDoneOrErrorOnce = false;

  WebrtcCameraCubit(
    this._viamSdk,
  ) : super(const WebrtcCameraState.idle());

  Future<void> init() async {
    try {
      //await rtcVideoRenderer.initialize();
      await _webRTCInit();
      emit(const WebrtcCameraState.loaded());
    } catch (error) {
      print(error);
    }
  }

  Future<void> _webRTCInit() async {
    ///create Peer;
    final rtcConfig = {
      'iceServers': [
        {
          "urls": "stun:global.stun.twilio.com:3478?transport=udp",
          'sdpSemantics': 'unified-plan',
        },
      ]
    };

    peerConnection = await createPeerConnection(rtcConfig);

    dataChannel = await peerConnection?.createDataChannel(
      'data',
      RTCDataChannelInit()
        ..binaryType = "arraybuffer"
        ..id = 0
        ..negotiated = true
        ..ordered = true,
    );

    negotiationChannel = await peerConnection!.createDataChannel(
      'negotiation',
      RTCDataChannelInit()
        ..binaryType = "arraybuffer"
        ..id = 1
        ..negotiated = true
        ..ordered = true,
    );
    _registerPeerConnectionListeners();
    //await Future.delayed(const Duration(seconds: 3));

    ///call Signaling Service Call method

    offer = await peerConnection?.createOffer({
      'mandatory': {
        'OfferToReceiveAudio': false,
        'OfferToReceiveVideo': false,
      }
    });

    final sdp = RTCSessionDescription(offer!.sdp, "offer");
    await peerConnection?.setLocalDescription(sdp);

    final sdpJsonString = _convertSDPtoJsonString(sdp);

    final encodedBase64String = _encodeSDPJsonStringtoBase64String(sdpJsonString);

    try {
      _responseStream = await _viamSdk.getSignalingStream(encodedBase64String);
      //final cc = ViamWebRtcClientChannel(peerConnection!, dataChannel!);
      //final streamClient = //StreamServiceClient(cc);
    } catch (error) {
      print(error);
    }

    var semafor = false;
    _responseStream?.listen((CallResponse response) async {
      if (response.hasInit()) {
        if (semafor) {
          print("SEMAFOR IS DONE");
          return;
        }
        semafor = true;
        print(response);
        await _handleInitResponse(response);
      } else if (response.hasUpdate()) {
        print(response);
        await _handleUpdateResponse(response);
      } else {
        print(response);
      }
    }, onDone: () {
      try {
        _viamSdk.update(uuid, done: true);
      } catch (error) {
        print(error);
      }
    }, onError: (error) async {
      print(error);
      //await _viamSdk.update("");
      // try {
      //   await _viamSdk.update(uuid);
      // } catch (err) {
      //   print(err);
      // }
    });

    // final updateRequest = AddStreamRequest(name: 'camera');
    // final updateRequestBinary = updateRequest.writeToBuffer();
    //
    //
    // try {
    //   await dataChannel?.send(
    //     RTCDataChannelMessage.fromBinary(updateRequestBinary),
    //   );
    // } catch (error) {
    //   print(error);
    // }

    //await Future.delayed(const Duration(seconds: 10));
    // try {
    //   await _viamSdk.addStreamName('camera');
    // } catch (error) {
    //   print(error);
    // }

    //await _registerResponseStreamListener();
  }

  Future<void> _handleInitResponse(CallResponse response) async {
    final init = response.init;
    uuid = response.uuid;

    final base64SDPString = init.sdp;
    final decodedSDPString = base64Decode(base64SDPString);
    final sdpString = utf8.decode(decodedSDPString);

    final decodedSDPMap = json.decode(sdpString) as Map;

    final remoteSDP = RTCSessionDescription(
      decodedSDPMap['sdp'],
      decodedSDPMap['type'],
    );

    try {
      await peerConnection?.setRemoteDescription(remoteSDP);
      setRemoteCompleter.complete();
      //await Future.delayed(const Duration(seconds: 2));
    } catch (error) {
      print(error);
    }

    //await _setRemoteDescription();
  }

  Future<void> _handleUpdateResponse(CallResponse response) async {
    await Future.delayed(Duration(seconds: 2));
    final iceCandidate = response.update.candidate;

    final mappedRTCIceCandidate = RTCIceCandidate(
      iceCandidate.candidate,
      iceCandidate.sdpMid,
      iceCandidate.sdpmLineIndex,
    );

    try {
      if (response.uuid != uuid) {
        print("UUID MISTMACH");
      }
      await peerConnection?.addCandidate(mappedRTCIceCandidate);
    } catch (error) {
      print(error);
    }
  }

  // Future<void> createPeer() async {
  //   final rtcConfig = {
  //     'iceServers': [
  //       {
  //         "urls": "stun:stun1.l.google.com:19302",
  //       },
  //     ]
  //   };
  //
  //   peerConnection = await createPeerConnection(rtcConfig);
  //
  //   dataChannel = await peerConnection?.createDataChannel(
  //     'data',
  //     RTCDataChannelInit()
  //       ..binaryType = "arraybuffer"
  //       ..id = 0
  //       ..negotiated = true
  //       ..ordered = true,
  //   );
  //
  //   negotiationChannel = await peerConnection!.createDataChannel(
  //     'negotiation',
  //     RTCDataChannelInit()
  //       ..binaryType = "arraybuffer"
  //       ..id = 1
  //       ..negotiated = true
  //       ..ordered = true,
  //   );
  //
  //   _registerPeerConnectionListeners();
  //   await Future.delayed(const Duration(seconds: 3));
  // }

  // Future<void> _registerResponseStreamListener() async => _responseStream?.listen(_responseStreamListener);
  //
  // Future<void> _responseStreamListener(CallResponse response) async {
  //   if (response.hasInit()) {
  //     await _handleInitResponse(response);
  //   } else if (response.hasUpdate()) {
  //     await _handleUpdateResponse(response);
  //   } else {
  //     print(response);
  //   }
  // }

  void _registerPeerConnectionListeners() {
    peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      print('ICE gathering state changed: $state');
    };

    peerConnection?.onConnectionState = (RTCPeerConnectionState state) {
      print('Connection state change: $state');
    };

    peerConnection?.onSignalingState = (RTCSignalingState state) {
      print('Signaling state change: $state');
    };

    peerConnection?.onIceGatheringState = (RTCIceGatheringState state) {
      print('ICE connection state change: $state');
    };

    peerConnection?.onAddStream = (MediaStream stream) {
      print("Add remote stream");
      onAddRemoteStream?.call(stream);
      remoteStream = stream;
      emit(const WebrtcCameraState.idle());
      emit(const WebrtcCameraState.loaded());
    };

    peerConnection?.onRenegotiationNeeded = () {
      print("Renegotiation needed");
    };

    peerConnection!.onIceCandidate = (RTCIceCandidate candidate) async {
      await setRemoteCompleter.future;
      if (candidate == null) {
        print('onIceCandidate: complete!');
        return;
      }

      // await remoteDescSet;
      // if (exchangeDone) {
      //   return;
      // }
      //
      if (candidate.candidate == null) {
        // iceComplete = true;
        // sendDone();
        return;
      }

      try {
        final candidateProto = ICECandidate(
          candidate: candidate.candidate,
          sdpMid: candidate.sdpMid,
          sdpmLineIndex: candidate.sdpMLineIndex,
        );
        await _viamSdk.updateICECandidate(candidateProto, uuid);
      } catch (err) {
        print(err);
      }
    };

    peerConnection?.onTrack = (RTCTrackEvent event) {
      print('Got remote track: ${event.streams[0]}');
      event.streams[0].getTracks().forEach((track) {
        print('Add a track to the remoteStream: $track');
        track.enabled = true;
        remoteStream?.addTrack(track);
      });
      emit(const WebrtcCameraState.idle());
      emit(const WebrtcCameraState.loaded());
    };

    negotiationChannel?.onMessage = (msg) {
      print("negotiation message: ${msg.toString()}");
    };

    negotiationChannel?.onDataChannelState = (msg) {
      print('Negotiation channel connection state change: $msg');
    };

    dataChannel?.onMessage = (msg) {
      final buf = msg.binary;

      final resp = grp.Response.fromBuffer(buf);

      print("dataChannel message: ${resp.toString()}");
    };

    dataChannel?.onDataChannelState = (msg) async {
      print('Data channel connection state change: $msg');
      final stub = StreamServiceClient(WebRtcClientChannel(peerConnection!, dataChannel), interceptors: [

      ]);
      try {
        await stub.addStream(AddStreamRequest(name: 'camera'));
      } catch (err) {
        print(err);
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
      // try {
      //   await _viamSdk.addStreamName('camera');
      // } catch (error) {
      //   print(error);
      // }
      // try {
      //   final results = await _viamSdk.getResourceNames(null, null);
      //   await _viamSdk.addStreamName('camera');
      // } catch (error) {
      //   print(error);
      // }
    };
  }

  Future<void> _setLocalDescription() async {
    try {
      await peerConnection?.setLocalDescription(offer!);
    } catch (error) {
      print(error);
    }
  }

  // Future<void> _setRemoteDescription() async {
  //   try {
  //     await peerConnection?.setRemoteDescription(remoteSDP!);
  //   } catch (error) {
  //     print(error);
  //   }
  // }
  //
  // Future<void> _sendDone() async {
  //   if (sentDoneOrErrorOnce) {
  //     return;
  //   }
  //
  //   sentDoneOrErrorOnce = true;
  //   try {
  //     await _viamSdk.update(uuid);
  //   } catch (err) {
  //     print(err);
  //   }
  // }
  //
  // Future<void> _sendError(String msg) async {
  //   if (sentDoneOrErrorOnce) {
  //     return;
  //   }
  //
  //   sentDoneOrErrorOnce = true;
  //   try {
  //     await _viamSdk.sendError(uuid, msg);
  //   } catch (err) {
  //     print(err);
  //   }
  // }

  String _convertSDPtoJsonString(RTCSessionDescription? sdp) {
    final jsonSDP = sdp?.toMap();
    return jsonEncode(jsonSDP);
  }

  String _encodeSDPJsonStringtoBase64String(String sdp) {
    final bytes = utf8.encode(sdp);
    return base64.encode(bytes);
  }
}

// MaxStreamCount is the max number of streams a channel can have.
const MaxStreamCount = 256;

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
