// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/stream/v1/stream.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/data_source/web_rtc_client.dart';
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

  String uuid = '';
  bool sentDoneOrErrorOnce = false;
  bool negOpen = false;
  bool ignoreOffer = false;
  bool polite = true;

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
    });
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
    } catch (error) {
      print(error);
    }
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

      if (candidate.candidate == null) {
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
      final offerColision =
          sdp.type == 'offer' && peerConnection?.signalingState != RTCSignalingState.RTCSignalingStateStable;

      ignoreOffer = !polite && offerColision;

      if (ignoreOffer) {
        return;
      }

      await peerConnection?.setRemoteDescription(sdp);

      if (sdp.type == 'offer') {
        final mediaConstraints = <String, dynamic>{
          'audio': true,
          'video': true,
        };
        final answ = await peerConnection?.createAnswer(mediaConstraints);
        await peerConnection?.setLocalDescription(answ!);
        final sdpJsonString = _convertSDPtoJsonString(await peerConnection?.getLocalDescription());

        final encodedBase64String = _encodeSDPJsonStringtoBase64String(sdpJsonString);
        await negotiationChannel?.send(RTCDataChannelMessage(encodedBase64String));
      }
    };

    negotiationChannel?.onDataChannelState = (state) {
      if (state == RTCDataChannelState.RTCDataChannelOpen) {
        negOpen = true;
      }
      print('Negotiation channel connection state change: $state');
    };

    dataChannel?.onDataChannelState = (RTCDataChannelState state) async {
      print('Data channel connection state change: $state');

      print("pre request call");

      final streamClient = StreamServiceClient(
        WebRtcClientChannel(peerConnection!, dataChannel!),
      );

      final request = AddStreamRequest(name: 'camera');

      try {
        var response = await streamClient.addStream(request);
        print("response: $response");
      } catch (err) {
        print(err);
      }

      final movementClient = MovementSensorServiceClient(
        WebRtcClientChannel(peerConnection!, dataChannel!),
      );

      final dgsg = GetPositionRequest(name: 'viamboat-data:movement');
      try {
        var response = await movementClient.getPosition(dgsg);
        print("response: $response");
      } catch (err) {
        print(err);
      }
    };
  }

  String _convertSDPtoJsonString(RTCSessionDescription? sdp) {
    final jsonSDP = sdp?.toMap();
    return jsonEncode(jsonSDP);
  }

  String _encodeSDPJsonStringtoBase64String(String sdp) {
    final bytes = utf8.encode(sdp);
    return base64.encode(bytes);
  }
}
