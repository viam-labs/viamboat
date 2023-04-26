import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_consumption_over_time_state.freezed.dart';

@freezed
class FuelConsumptionOverTimeState with _$FuelConsumptionOverTimeState {
  const factory FuelConsumptionOverTimeState.loading() = FuelConsumptionOverTimeStateLoading;

  const factory FuelConsumptionOverTimeState.loaded() = FuelConsumptionOverTimeStateLoaded;
}
