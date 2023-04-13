import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_state.dart';

@injectable
class FuelConsumptionPerMileCubit extends Cubit<FuelConsumptionPerMileState> {
  FuelConsumptionPerMileCubit() : super(const FuelConsumptionPerMileState.loaded());
}
