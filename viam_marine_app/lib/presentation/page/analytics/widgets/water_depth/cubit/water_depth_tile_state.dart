import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';

part 'water_depth_tile_state.freezed.dart';

@freezed
class WaterDepthTileState with _$WaterDepthTileState {
  const factory WaterDepthTileState.idle() = WaterDepthTileStateIdle;

  const factory WaterDepthTileState.loading() = WaterDepthTileStateLoading;

  const factory WaterDepthTileState.loaded(List<WaterDepth> waterDepthData) = WaterDepthTileStateLoaded;

  const factory WaterDepthTileState.error() = WaterDepthTileStateError;
}
