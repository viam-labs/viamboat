import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_fuel_consumption_per_mile_data_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_state.dart';

@injectable
class FuelConsumptionPerMileCubit extends Cubit<FuelConsumptionPerMileState> {
  final GetFuelConsumptionPerMileDataUseCase _getFuelConsumptionPerMileDataUseCase;

  FuelConsumptionPerMileCubit(this._getFuelConsumptionPerMileDataUseCase)
      : super(const FuelConsumptionPerMileState.loading());

  Future<void> init() async {
    final data = await _getFuelConsumptionPerMileDataUseCase();

    final maxReading = maxBy(data, (fuelConsumption) => fuelConsumption.value);

    emit(FuelConsumptionPerMileState.loaded(data, maxReading?.value ?? 0));
  }
}
