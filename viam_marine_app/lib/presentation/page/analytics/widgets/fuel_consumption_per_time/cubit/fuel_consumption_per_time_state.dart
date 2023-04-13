import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_consumption_per_time_state.freezed.dart';

@freezed
class FuelConsumptionPerTimeState with _$FuelConsumptionPerTimeState {
  const factory FuelConsumptionPerTimeState.loading() = FuelConsumptionPerTimeStateLoading;

  const factory FuelConsumptionPerTimeState.loaded() = FuelConsumptionPerTimeStateLoaded;
}
