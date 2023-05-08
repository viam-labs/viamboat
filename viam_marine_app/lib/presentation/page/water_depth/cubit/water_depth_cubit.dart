import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_depth_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/set_water_depth_filters_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterDepthCubit extends ViamCubit<WaterDepthScreenState> {
  final GetWaterDepthDataUseCase _getWaterDepthDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;
  final SetWaterDepthFiltersUseCase _setWaterDepthFiltersUseCase;

  StreamSubscription? _refreshFilters;

  WaterDepthCubit(
    this._getWaterDepthDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
    this._setWaterDepthFiltersUseCase,
  ) : super(const WaterDepthScreenState.loading());

  Future<void> init() async {
    _listenToRefreshFilters();
    final waterDepthData = await _getWaterDepthDataUseCase();
    emit(WaterDepthScreenState.loaded(waterDepthData));
  }

  void _listenToRefreshFilters() {
    _refreshFilters?.cancel();
    _refreshFilters = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.waterDepth) {
        final waterDepthData = await _getWaterDepthDataUseCase();
        emit(WaterDepthScreenState.loaded(waterDepthData));
      }
    });
  }

  void setDepthFilters(WaterFilter filter) => _setWaterDepthFiltersUseCase(filter);

  @override
  Future<void> close() {
    _refreshFilters?.cancel();
    return super.close();
  }
}
