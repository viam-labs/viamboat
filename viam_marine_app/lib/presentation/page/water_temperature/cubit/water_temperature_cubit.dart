import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_temperature_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/set_water_temperature_filters_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterTemperatureCubit extends ViamCubit<WaterTemperatureScreenState> {
  final GetWaterTemperatureDataUseCase _getWaterTemperatureDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;
  final SetWaterTemperatureFiltersUseCase _setWaterTemperatureFiltersUseCase;

  StreamSubscription? _refreshFilters;

  WaterTemperatureCubit(
    this._getWaterTemperatureDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
    this._setWaterTemperatureFiltersUseCase,
  ) : super(const WaterTemperatureScreenState.loading());

  Future<void> init() async {
    _listenToRefreshFilters();
    final waterTemperatureData = await _getWaterTemperatureDataUseCase();
    emit(WaterTemperatureScreenState.loaded(waterTemperatureData));
  }

  void _listenToRefreshFilters() {
    _refreshFilters?.cancel();
    _refreshFilters = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.waterTemperature) {
        final waterTemperatureData = await _getWaterTemperatureDataUseCase();
        emit(WaterTemperatureScreenState.loaded(waterTemperatureData));
      }
    });
  }

  void setTemperatureFilters(WaterFilter filter) => _setWaterTemperatureFiltersUseCase(filter);

  @override
  Future<void> close() {
    _refreshFilters?.cancel();
    return super.close();
  }
}
