import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_state.dart';

@injectable
class FuelConsumptionOverTimeCubit extends Cubit<FuelConsumptionOverTimeState> {
  static const _tag = 'FuelConsumptionOverTimeCubit';

  final GetFuelConsumptionOverTimeDataUseCase _getFuelConsumptionOverTimeDataUseCase;

  FuelConsumptionOverTimeCubit(this._getFuelConsumptionOverTimeDataUseCase)
      : super(const FuelConsumptionOverTimeState.idle());

  Future<void> init(
    String locationId,
    String robotName,
    String? fuelSensorName,
    String? movementSensorName,
  ) async {
    try {
      emit(const FuelConsumptionOverTimeState.loading());

      final List<FuelConsumptionOverTime> fuelConsumptionOverTimeData = await _getFuelConsumptionOverTimeDataUseCase(
        locationId: locationId,
        robotName: robotName,
        fuelSensorName: fuelSensorName,
        movementSensorName: movementSensorName,
      );

      final List<FuelConsumptionOverTime> fuelConsumptionOverTimeDataToDisplay =
          fuelConsumptionOverTimeData.reversed.take(10).toList().reversed.toList();

      final yAxisMaxValue = maxBy(fuelConsumptionOverTimeDataToDisplay, (fuelOverTime) => fuelOverTime.value);

      if (yAxisMaxValue != null && yAxisMaxValue.value == 0) {
        final double max = yAxisMaxValue.value + 10;

        emit(FuelConsumptionOverTimeState.loaded(
          fuelConsumptionOverTimeData,
          max,
        ));
      } else {
        emit(FuelConsumptionOverTimeState.loaded(
          fuelConsumptionOverTimeData,
          yAxisMaxValue?.value ?? 10,
        ));
      }
    } catch (error, st) {
      emit(const FuelConsumptionOverTimeState.error());
      Fimber.e('Error while $_tag init', ex: error, stacktrace: st);
    }
  }
}
