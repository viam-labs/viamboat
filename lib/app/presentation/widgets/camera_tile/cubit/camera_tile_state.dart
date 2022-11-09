import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_tile_state.freezed.dart';

@freezed
class CameraTileState with _$CameraTileState {
  const factory CameraTileState.idle() = CameraTileStateIdle;

  const factory CameraTileState.loading() = CameraTileStateLoading;

  const factory CameraTileState.loaded(List<int> image) = CameraTileStateLoaded;

  const factory CameraTileState.error() = CameraTileStateError;
}
