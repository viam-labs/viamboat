import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';

part 'water_depth_state.freezed.dart';

@freezed
class WaterDepthScreenState with _$WaterDepthScreenState {
  const factory WaterDepthScreenState.loading() = WaterDepthScreenStateLoading;

  const factory WaterDepthScreenState.loaded(
    List<WaterDepth> waterDepthData,
  ) = WaterDepthScreenStateLoaded;

  const factory WaterDepthScreenState.error() = WaterDepthScreenStateError;
}
