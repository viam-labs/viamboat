import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';

part 'fuel_consumption_over_time_state.freezed.dart';

@freezed
class FuelConsumptionOverTimeState with _$FuelConsumptionOverTimeState {
  const factory FuelConsumptionOverTimeState.idle() = FuelConsumptionOverTimeStateIdle;

  const factory FuelConsumptionOverTimeState.loading() = FuelConsumptionOverTimeStateLoading;

  const factory FuelConsumptionOverTimeState.loaded(
    List<FuelConsumptionOverTime> data,
    double yAxisMaxValue,
  ) = FuelConsumptionOverTimeStateLoaded;

  const factory FuelConsumptionOverTimeState.error() = FuelConsumptionOverTimeStateError;
}
