import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_state.dart';

@injectable
class FuelConsumptionOverTimeCubit extends Cubit<FuelConsumptionOverTimeState> {
  FuelConsumptionOverTimeCubit() : super(const FuelConsumptionOverTimeState.loaded());
}
