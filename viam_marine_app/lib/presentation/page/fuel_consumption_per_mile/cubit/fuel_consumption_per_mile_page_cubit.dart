import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class FuelConsumptionPerMilePageCubit extends ViamCubit<FuelConsumptionPerMilePageState> {
  final GetFuelConsumptionPerMileDataUseCase _getFuelConsumptionPerMileDataUseCase;

  FuelConsumptionPerMilePageCubit(this._getFuelConsumptionPerMileDataUseCase)
      : super(const FuelConsumptionPerMilePageState.idle());

  Future<void> init() async {
    emit(const FuelConsumptionPerMilePageState.loading());

    final data = await _getFuelConsumptionPerMileDataUseCase();
    final maxReading = maxBy(data, (fuelConsumption) => fuelConsumption.value);

    emit(FuelConsumptionPerMilePageState.loaded(data, maxReading?.value ?? 0));
  }
}
