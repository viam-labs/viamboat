import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/sdk/src/viam_sdk.dart';

@injectable
class WebrtcCameraCubit extends Cubit<WebrtcCameraState> {
  final ViamSdk _viamSdk;

  final RTCVideoRenderer rtcVideoRenderer = RTCVideoRenderer();

  WebrtcCameraCubit(
    this._viamSdk,
  ) : super(const WebrtcCameraState.idle());

  Future<void> init() async {
    try {
      await rtcVideoRenderer.initialize();
      final resource = await _viamSdk.getResourceNames(null, null);
      print(resource);
      // peerConnection.onAddStream = (MediaStream stream) {
      //   print("Add remote stream");
      //   rtcVideoRenderer.srcObject = stream;
      //   remoteStream = stream;
      //
      //   emit(const WebrtcCameraState.idle());
      //   emit(const WebrtcCameraState.loaded());
      // };

      // peerConnection.onTrack = (RTCTrackEvent event) {
      //   print('Got remote track: ${event.streams[0]}');
      //   event.streams[0].getTracks().forEach((track) {
      //     print('Add a track to the remoteStream: $track');
      //     track.enabled = true;
      //     remoteStream?.addTrack(track);
      //   });
      //   emit(const WebrtcCameraState.idle());
      //   emit(const WebrtcCameraState.loaded());
      // };

      //   final streamClient = StreamServiceClient(
      //     WebRtcClientChannel(),
      //   );
      //
      //   final request = AddStreamRequest(name: 'camera');
      //
      //   try {
      //     var response = await streamClient.addStream(request);
      //     print("response: $response");
      //   } catch (err) {
      //     print(err);
      //   }
      //
      //   final movementClient = MovementSensorServiceClient(
      //     WebRtcClientChannel(),
      //   );
      //
      //   final dgsg = GetPositionRequest(name: 'viamboat-data:movement');
      //   try {
      //     var response = await movementClient.getPosition(dgsg);
      //     print("response: $response");
      //   } catch (err) {
      //     print(err);
      //   }
      //
      //   emit(const WebrtcCameraState.loaded());
    } catch (error) {
      print(error);
    }
  }
}
