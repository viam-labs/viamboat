import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_depth_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterDepthCubit extends ViamCubit<WaterDepthTileState> {
  static const _tag = 'WaterDepthCubit';

  final GetWaterDepthDataUseCase _getWaterDepthDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;

  StreamSubscription? _refreshFilters;
  late String locationId;
  late String robotName;
  late String? depthSensorName;
  late String? movementSensorName;

  WaterDepthCubit(
    this._getWaterDepthDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
  ) : super(const WaterDepthTileState.idle());

  Future<void> init({
    required String locationId,
    required String robotName,
    String? depthSensorName,
    String? movementSensorName,
  }) async {
    emit(const WaterDepthTileState.loading());
    this.locationId = locationId;
    this.robotName = robotName;
    this.depthSensorName = depthSensorName;
    this.movementSensorName = movementSensorName;

    _listenToRefreshFilters();
    await _getWaterDepthData();
  }

  void _listenToRefreshFilters() {
    _refreshFilters?.cancel();
    _refreshFilters = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.waterDepth) {
        emit(const WaterDepthTileState.loading());
        await _getWaterDepthData();
      }
    });
  }

  @override
  Future<void> close() {
    _refreshFilters?.cancel();
    return super.close();
  }

  Future<void> _getWaterDepthData() async {
    try {
      final List<WaterDepth> waterDepthData = await _getWaterDepthDataUseCase(
        locationId: locationId,
        robotName: robotName,
        depthSensorName: depthSensorName,
        movementSensorName: movementSensorName,
      );

      emit(WaterDepthTileState.loaded(waterDepthData));
    } catch (error, st) {
      Fimber.e(
        '$_tag Error while fetching water depth data',
        ex: error,
        stacktrace: st,
      );
      emit(const WaterDepthTileState.error());
    }
  }
}
