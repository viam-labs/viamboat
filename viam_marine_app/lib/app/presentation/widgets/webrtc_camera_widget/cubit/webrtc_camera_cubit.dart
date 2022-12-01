import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/stream/v1/stream.pbgrpc.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';

typedef void StreamStateCallback(MediaStream stream);

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
      //await _webRTCInit();
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
    await Future.delayed(const Duration(seconds: 3));

    ///call Signaling Service Call method

    offer = await peerConnection?.createOffer();

    final sdp = RTCSessionDescription(offer!.sdp, "offer");
    await peerConnection?.setLocalDescription(sdp);

    final sdpJsonString = _convertSDPtoJsonString(sdp);

    final encodedBase64String = _encodeSDPJsonStringtoBase64String(sdpJsonString);

    try {
      _responseStream = await _viamSdk.getSignalingStream(encodedBase64String);
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
      print("dataChannel message: ${msg.toString()}");
    };

    dataChannel?.onDataChannelState = (msg) {
      print('Data channel connection state change: $msg');
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
