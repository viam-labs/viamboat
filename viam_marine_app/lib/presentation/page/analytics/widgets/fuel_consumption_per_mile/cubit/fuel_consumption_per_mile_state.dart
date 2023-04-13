import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_consumption_per_mile_state.freezed.dart';

@freezed
class FuelConsumptionPerMileState with _$FuelConsumptionPerMileState {
  const factory FuelConsumptionPerMileState.loading() = FuelConsumptionPerMileStateLoading;

  const factory FuelConsumptionPerMileState.loaded() = FuelConsumptionPerMileStateLoaded;
}
