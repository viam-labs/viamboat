// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/sdk/src/data/viam/google/protobuf/duration.pb.dart' as grpcDuration;
import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/grpc.pb.dart' as grpc;
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/stream/v1/stream.pbgrpc.dart';
import 'package:viam_marine/sdk/src/protos/viam/rpc/examples/echo/v1/echo.pbgrpc.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';

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

  //StreamStateCallback? onAddRemoteStream;
  String uuid = '';
  bool sentDoneOrErrorOnce = false;

  WebrtcCameraCubit(
    this._viamSdk,
  ) : super(const WebrtcCameraState.idle());

  Future<void> init() async {
    try {
      await rtcVideoRenderer.initialize();
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
      print("call response: $response");
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
      print("adding ice candidate $mappedRTCIceCandidate to $peerConnection");
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
      //onAddRemoteStream?.call(stream);
      rtcVideoRenderer.srcObject = stream;
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

    negotiationChannel?.onMessage = (msg) async {
      final decodedMsg = base64Decode(msg.text);
      final sdpString = utf8.decode(decodedMsg);

      final decodedSDPMap = json.decode(sdpString) as Map;

      final sdp = RTCSessionDescription(
        decodedSDPMap['sdp'],
        decodedSDPMap['type'],
      );

      await peerConnection?.setRemoteDescription(sdp);

      if (sdp.type == 'offer') {
        final sdpJsonString = _convertSDPtoJsonString(await peerConnection?.getLocalDescription());

        final encodedBase64String = _encodeSDPJsonStringtoBase64String(sdpJsonString);
        await negotiationChannel?.send(RTCDataChannelMessage(encodedBase64String));
      }
    };

    negotiationChannel?.onDataChannelState = (msg) {
      print('Negotiation channel connection state change: $msg');
    };

    dataChannel?.onDataChannelState = (RTCDataChannelState state) async {
      print('Data channel connection state change: $state');

      print("pre request call");
      // final echoClient = EchoServiceClient(
      //   WebRtcClientChannel(peerConnection!, dataChannel!),
      // );

      // var locationRequest = GetPositionRequest();
      // locationRequest.name = "viamboat-data:movement";

      // try {
      //   var response = await echoClient.echo(EchoRequest(message: "echo"));
      //   print("response: $response");
      // } catch (err) {
      //   print(err);
      // }

      final streamClient = StreamServiceClient(
        WebRtcClientChannel(peerConnection!, dataChannel!),
      );

      final request = AddStreamRequest(name: 'Cam');

      try {
        var response = await streamClient.addStream(request);
        print("response: $response");
      } catch (err) {
        print(err);
      }

      // final movementClient = MovementSensorServiceClient(
      //   WebRtcClientChannel(peerConnection!, dataChannel!),
      // );

      // final request = GetPositionRequest(name: 'viamboat-data:movement');
      // try {
      //   var response = await movementClient.getPosition(request);
      //   print("response: $response");
      // } catch (err) {
      //   print(err);
      // }

      // final resourceClient = RobotServiceClient(
      //   WebRtcClientChannel(peerConnection!, dataChannel!),
      // );

      // final req = ResourceNamesRequest();

      // try {
      //   var response = await resourceClient.resourceNames(req);
      //   print("response: $response");
      // } catch (err) {
      //   print(err);
      // }

      print("post request call");
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

class WebRtcClientChannel extends ClientChannelBase {
  final RTCPeerConnection rtcPeerConnection;
  final RTCDataChannel dataChannel;

  WebRtcClientChannel(this.rtcPeerConnection, this.dataChannel);

  @override
  ClientConnection createConnection() {
    print("createConnection");
    return WebRtcClientConnection(rtcPeerConnection, dataChannel);
  }
}

class WebRtcClientConnection extends ClientConnection {
  final RTCPeerConnection rtcPeerConnection;
  final RTCDataChannel dataChannel;

  WebRtcClientConnection(this.rtcPeerConnection, this.dataChannel);

  @override
  String get authority {
    print("get authority");
    return "";
  }

  @override
  void dispatchCall(ClientCall<dynamic, dynamic> call) {
    print("dispatch call: $call");
    call.onConnectionReady(this);
  }

  @override
  GrpcTransportStream makeRequest(
      String path, Duration? timeout, Map<String, String> metadata, ErrorHandler onRequestFailure,
      {required CallOptions callOptions}) {
    print("make request: $path");
    final stream = grpc.Stream(id: Int64(0));
    final grpMetadata = grpc.Metadata(md: metadata.map((key, value) => MapEntry(key, grpc.Strings(values: [value]))));
    final grpcTimeout = timeout != null
        ? grpcDuration.Duration(
            seconds: Int64(timeout.inSeconds),
            nanos: timeout.inMicroseconds * 1000,
          )
        : null;
    final headers = grpc.RequestHeaders(method: path, metadata: grpMetadata, timeout: grpcTimeout);
    final request = grpc.Request(stream: stream, headers: headers);
    return WebRtcTransportStream(rtcPeerConnection, dataChannel, request);
  }

  @override
  set onStateChanged(void Function(ConnectionState p1) cb) {
    print("onStateChanged set to: $cb");
  }

  @override
  String get scheme {
    print("get scheme");
    return "";
  }

  @override
  Future<void> shutdown() async {
    print("shutdown");
  }

  @override
  Future<void> terminate() async {
    print("terminate");
  }
}

class WebRtcTransportStream extends GrpcTransportStream {
  final RTCPeerConnection rtcPeerConnection;
  final RTCDataChannel dataChannel;
  final grpc.Request headersRequest;

  WebRtcTransportStream(this.rtcPeerConnection, this.dataChannel, this.headersRequest) {
    _outgoingMessages.stream.listen((List<int> data) {
      print("on outgoing stream event: $data");
      final payloadRequest = grpc.Request(
          stream: headersRequest.stream,
          message: grpc.RequestMessage(
              hasMessage: true, eos: true, packetMessage: grpc.PacketMessage(data: data, eom: true)));
      dataChannel.send(RTCDataChannelMessage.fromBinary(headersRequest.writeToBuffer()));
      dataChannel.send(RTCDataChannelMessage.fromBinary(payloadRequest.writeToBuffer()));
    });
    dataChannel.onMessage = (RTCDataChannelMessage data) {
      print("dataChannel bin: ${data.binary}");
      final response = grpc.Response.fromBuffer(data.binary);

      final headers = response.headers;
      final trailers = response.trailers;
      final message = response.message;

      final type = response.whichType();
      print("dataChannel type: $type");
      print("dataChannel headers: $headers");
      print("dataChannel message: $message");
      print("dataChannel trailers: $trailers");
      print("dataChannel trailers status: ${trailers.status}");
      print("------\n");

      switch (type) {
        case grpc.Response_Type.headers:
          _incomingMessages.add(
              GrpcMetadata(headers.metadata.md.map((key, value) => MapEntry(key, value.values.firstOrNull ?? ''))));
          break;
        case grpc.Response_Type.message:
          _incomingMessages.add(GrpcData(message.packetMessage.data, isCompressed: false));
          break;
        case grpc.Response_Type.trailers:
          _incomingMessages.add(GrpcMetadata({
            "grpc-status": trailers.status.code.toString(),
            "grpc-message": trailers.status.message,
          }));
          _incomingMessages.close();
          break;
        case grpc.Response_Type.notSet:
          // TODO: Handle this case.
          break;
      }
    };
  }

  final StreamController<List<int>> _outgoingMessages = StreamController<List<int>>();
  final StreamController<GrpcMessage> _incomingMessages = StreamController();

  @override
  Stream<GrpcMessage> get incomingMessages => _incomingMessages.stream;

  @override
  StreamSink<List<int>> get outgoingMessages => _outgoingMessages.sink;

  @override
  Future<void> terminate() async {
    print("terminate");
    // TODO: implement terminate
  }
}
