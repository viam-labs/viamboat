import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';

part 'fuel_consumption_per_mile_state.freezed.dart';

@freezed
class FuelConsumptionPerMileState with _$FuelConsumptionPerMileState {
  const factory FuelConsumptionPerMileState.loading() = FuelConsumptionPerMileStateLoading;

  const factory FuelConsumptionPerMileState.loaded(
    List<FuelConsumptionPerMile> data,
    double yAxisMaxReading,
  ) = FuelConsumptionPerMileStateLoaded;
}
