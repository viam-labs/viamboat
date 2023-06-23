import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_page_state.freezed.dart';

@freezed
class CameraPageState with _$CameraPageState {
  const factory CameraPageState.idle() = CameraPageStateIdle;

  const factory CameraPageState.loading() = CameraPageStateLoading;

  const factory CameraPageState.loaded() = CameraPageStateLoaded;

  const factory CameraPageState.error() = CameraPageStateError;
}
