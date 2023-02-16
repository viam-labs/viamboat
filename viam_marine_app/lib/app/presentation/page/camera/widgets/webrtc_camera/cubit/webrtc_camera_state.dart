import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'webrtc_camera_state.freezed.dart';

@freezed
class WebrtcCameraState with _$WebrtcCameraState {
  const factory WebrtcCameraState.idle() = WebrtcCameraStateIdle;

  const factory WebrtcCameraState.loaded(RTCVideoRenderer rtcVideoRenderer) = WebrtcCameraStateLoaded;

  const factory WebrtcCameraState.error() = WebrtcCameraStateError;
}
