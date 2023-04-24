import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_depth_data_use_case.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterDepthCubit extends ViamCubit<WaterDepthScreenState> {
  final GetWaterDepthDataUseCase _getWaterDepthDataUseCase;

  WaterDepthCubit(
    this._getWaterDepthDataUseCase,
  ) : super(const WaterDepthScreenState.loading());

  Future<void> init() async {
    final waterDepthData = _getWaterDepthDataUseCase();
    emit(WaterDepthScreenState.loaded(waterDepthData));
  }
}
