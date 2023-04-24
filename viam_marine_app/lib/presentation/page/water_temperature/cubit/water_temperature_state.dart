import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';

part 'water_temperature_state.freezed.dart';

@freezed
class WaterTemperatureScreenState with _$WaterTemperatureScreenState {
  const factory WaterTemperatureScreenState.loading() = WaterTemperatureScreenStateLoading;

  const factory WaterTemperatureScreenState.loaded(
    List<WaterTemperature> waterTemperatureData,
  ) = WaterTemperatureScreenStateLoaded;

  const factory WaterTemperatureScreenState.error() = WaterTemperatureScreenStateError;
}
