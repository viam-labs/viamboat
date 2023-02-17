import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';

part 'webrtc_camera_state.freezed.dart';

@freezed
class WebrtcCameraState with _$WebrtcCameraState {
  const factory WebrtcCameraState.idle() = WebrtcCameraStateIdle;

  const factory WebrtcCameraState.loaded(RTCVideoRenderer rtcVideoRenderer) = WebrtcCameraStateLoaded;

  const factory WebrtcCameraState.error(
    ViamError viamError,
    RTCVideoRenderer rtcVideoRenderer,
    DateTime? lastUpdated,
  ) = WebrtcCameraStateError;
}
