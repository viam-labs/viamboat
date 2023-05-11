import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';

part 'fuel_consumption_per_mile_page_state.freezed.dart';

@freezed
class FuelConsumptionPerMilePageState with _$FuelConsumptionPerMilePageState {
  const factory FuelConsumptionPerMilePageState.idle() = FuelConsumptionPerMilePageStateIdle;

  const factory FuelConsumptionPerMilePageState.loading() = FuelConsumptionPerMilePageStateLoading;

  const factory FuelConsumptionPerMilePageState.loaded(
    List<FuelConsumptionPerMile> fuelConsumptionPerMile,
    double yAxisMaxValue,
  ) = FuelConsumptionPerMilePageStateLoaded;
}
