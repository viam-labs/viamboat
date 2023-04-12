import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterTemperatureCubit extends ViamCubit<WaterTemperatureTileState> {
  WaterTemperatureCubit() : super(const WaterTemperatureTileState.loading());
}
