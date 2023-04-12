import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterDepthCubit extends ViamCubit<WaterDepthTileState> {
  WaterDepthCubit() : super(const WaterDepthTileState.loading());
}
