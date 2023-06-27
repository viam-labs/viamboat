import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_state.dart';

@injectable
class FuelConsumptionOverTimeCubit extends Cubit<FuelConsumptionOverTimeState> {
  final GetFuelConsumptionOverTimeDataUseCase _getFuelConsumptionOverTimeDataUseCase;

  FuelConsumptionOverTimeCubit(this._getFuelConsumptionOverTimeDataUseCase)
      : super(const FuelConsumptionOverTimeState.loading());

  Future<void> init(
    String locationId,
    String robotName,
  ) async {
    final fuelConsumptionOverTimeData = await _getFuelConsumptionOverTimeDataUseCase(
      locationId: locationId,
      robotName: robotName,
    );

    final yAxisMaxValue = maxBy(fuelConsumptionOverTimeData, (fuelOverTime) => fuelOverTime.value);

    emit(FuelConsumptionOverTimeState.loaded(
      fuelConsumptionOverTimeData,
      yAxisMaxValue?.value ?? 0,
    ));
  }
}
