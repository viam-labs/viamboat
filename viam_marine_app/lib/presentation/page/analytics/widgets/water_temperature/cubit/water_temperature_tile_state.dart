import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';

part 'water_temperature_tile_state.freezed.dart';

@freezed
class WaterTemperatureTileState with _$WaterTemperatureTileState {
  const factory WaterTemperatureTileState.idle() = WaterTemperatureTileStateIdle;

  const factory WaterTemperatureTileState.loading() = WaterTemperatureTileStateLoading;

  const factory WaterTemperatureTileState.loaded(
    List<WaterTemperature> waterTemperatureData,
  ) = WaterTemperatureTileStateLoaded;

  const factory WaterTemperatureTileState.error() = WaterTemperatureTileStateError;
}
