import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_over_time_data_use_case.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class FuelConsumptionOverTimePageCubit extends ViamCubit<FuelConsumptionOverTimePageState> {
  final GetFuelConsumptionOverTimeDataUseCase _getFuelConsumptionOverTimeDataUseCase;

  FuelConsumptionOverTimePageCubit(this._getFuelConsumptionOverTimeDataUseCase)
      : super(const FuelConsumptionOverTimePageState.idle());

  Future<void> init() async {
    emit(const FuelConsumptionOverTimePageState.loading());

    final fuelConsumptionOverTimeData = await _getFuelConsumptionOverTimeDataUseCase();

    final yAxisMaxValue = maxBy(fuelConsumptionOverTimeData, (fuelOverTime) => fuelOverTime.value);

    emit(FuelConsumptionOverTimePageState.loaded(
      fuelConsumptionOverTimeData,
      yAxisMaxValue?.value ?? 0,
    ));
  }
}
