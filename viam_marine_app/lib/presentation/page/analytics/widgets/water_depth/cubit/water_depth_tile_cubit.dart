import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_depth_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterDepthCubit extends ViamCubit<WaterDepthTileState> {
  final GetWaterDepthDataUseCase _getWaterDepthDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;

  StreamSubscription? _refreshFilters;

  WaterDepthCubit(
    this._getWaterDepthDataUseCase,
      this._subscribeToRefreshFiltersUseCase,
  ) : super(const WaterDepthTileState.loading());

  Future<void> init() async {
    _listenToRefreshFilters();
    await Future.delayed(const Duration(seconds: 1));
    final waterDepthData = await _getWaterDepthDataUseCase();
    emit(WaterDepthTileState.loaded(waterDepthData));
  }

  void _listenToRefreshFilters() {
    _refreshFilters?.cancel();
    _refreshFilters = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.waterDepth) {
        final waterDepthData = await _getWaterDepthDataUseCase();
        emit(WaterDepthTileState.loaded(waterDepthData));
      }
    });
  }

  @override
  Future<void> close() {
    _refreshFilters?.cancel();
    return super.close();
  }
}
