import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_depth_tile_state.freezed.dart';

@freezed
class WaterDepthTileState with _$WaterDepthTileState {
  const factory WaterDepthTileState.loading() = WaterDepthTileStateLoading;

  const factory WaterDepthTileState.loaded() = WaterDepthTileStateLoaded;

  const factory WaterDepthTileState.error() = WaterDepthTileStateError;
}
