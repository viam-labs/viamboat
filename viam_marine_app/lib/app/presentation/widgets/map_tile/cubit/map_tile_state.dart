import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_tile_state.freezed.dart';

@freezed
class MapTileState with _$MapTileState {
  const factory MapTileState.idle() = MapTileStateIdle;

  const factory MapTileState.loaded({
    required double latitude,
    required double longitude,
    required double heading,
  }) = MapTileStateLoaded;

  const factory MapTileState.error([String? message]) = MapTileStateError;
}
