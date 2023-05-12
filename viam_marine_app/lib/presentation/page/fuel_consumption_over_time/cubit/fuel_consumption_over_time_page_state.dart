import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';

part 'fuel_consumption_over_time_page_state.freezed.dart';

@freezed
class FuelConsumptionOverTimePageState with _$FuelConsumptionOverTimePageState {
  const factory FuelConsumptionOverTimePageState.idle() = FuelConsumptionOverTimePageStateIdle;

  const factory FuelConsumptionOverTimePageState.loading() = FuelConsumptionOverTimePageStateLoading;

  const factory FuelConsumptionOverTimePageState.loaded(
    List<FuelConsumptionOverTime> data,
    double yAxisMaxValue,
  ) = FuelConsumptionOverTimePageStateLoaded;
}
