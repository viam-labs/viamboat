import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_time/cubit/fuel_consumption_per_time_state.dart';

@injectable
class FuelConsumptionPerTimeCubit extends Cubit<FuelConsumptionPerTimeState> {
  FuelConsumptionPerTimeCubit() : super(const FuelConsumptionPerTimeState.loaded());
}
