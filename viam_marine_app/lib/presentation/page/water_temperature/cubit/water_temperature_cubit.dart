import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_temperature_data_use_case.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterTemperatureCubit extends ViamCubit<WaterTemperatureScreenState> {
  final GetWaterTemperatureDataUseCase _getWaterTemperatureDataUseCase;

  WaterTemperatureCubit(
    this._getWaterTemperatureDataUseCase,
  ) : super(const WaterTemperatureScreenState.loading());

  Future<void> init() async {
    final waterTemperatureData = _getWaterTemperatureDataUseCase();
    emit(WaterTemperatureScreenState.loaded(waterTemperatureData));
  }
}
