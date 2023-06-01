import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_current_water_filters_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/set_depth_over_time_filters_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/set_water_depth_filters_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/set_water_temperature_filters_use_case.dart';
import 'package:viam_marine/presentation/page/filters/cubit/filters_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class FiltersCubit extends ViamCubit<FiltersState> {
  final GetCurrentWaterFiltersUseCase _getCurrentWaterFiltersUseCase;
  final SetWaterDepthFiltersUseCase _setWaterDepthFiltersUseCase;
  final SetWaterTemperatureFiltersUseCase _setWaterTemperatureFiltersUseCase;
  final SetDepthOverTimeFiltersUseCase _setDepthOverTimeFiltersUseCase;

  late FiltersType _type;

  FiltersCubit(
    this._getCurrentWaterFiltersUseCase,
    this._setWaterDepthFiltersUseCase,
    this._setWaterTemperatureFiltersUseCase,
    this._setDepthOverTimeFiltersUseCase,
  ) : super(const FiltersState.idle());

  Future<void> init(FiltersType type) async {
    _type = type;
    final filters = _getCurrentWaterFiltersUseCase(_type);
    emit(FiltersState.loaded(filters, type));
  }

  void setFiltersType(WaterFilter filter) {
    switch (_type) {
      case FiltersType.waterTemperature:
        _setWaterTemperatureFiltersUseCase(filter);
        break;
      case FiltersType.waterDepth:
        _setWaterDepthFiltersUseCase(filter);
        break;
      case FiltersType.depthOverTime:
        _setDepthOverTimeFiltersUseCase(filter);
        break;
    }
  }
}
