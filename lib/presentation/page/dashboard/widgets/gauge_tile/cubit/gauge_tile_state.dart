import 'package:freezed_annotation/freezed_annotation.dart';

part 'gauge_tile_state.freezed.dart';

@freezed
class GaugeTileState with _$GaugeTileState {
  const factory GaugeTileState.idle() = GaugeTileStateIdle;

  const factory GaugeTileState.loading() = GaugeTileStateLoading;

  const factory GaugeTileState.error() = GaugeTileStateError;
}
