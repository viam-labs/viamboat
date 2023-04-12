import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_temperature_tile_state.freezed.dart';

@freezed
class WaterTemperatureTileState with _$WaterTemperatureTileState {
  const factory WaterTemperatureTileState.loading() = WaterTemperatureTileStateLoading;

  const factory WaterTemperatureTileState.loaded() = WaterTemperatureTileStateLoaded;

  const factory WaterTemperatureTileState.error() = WaterTemperatureTileStateError;
}
