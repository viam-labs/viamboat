import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
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
  static const _tag = 'WaterDepthCubit';

  final GetWaterDepthDataUseCase _getWaterDepthDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;
  final SetWaterDepthFiltersUseCase _setWaterDepthFiltersUseCase;

  StreamSubscription? _refreshFilters;

  late String locationId;
  late String robotName;
  late String? depthSensorName;
  late String? movementSensorName;

  WaterDepthCubit(
    this._getWaterDepthDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
    this._setWaterDepthFiltersUseCase,
  ) : super(const WaterDepthScreenState.idle());

  Future<void> init({
    required String locationId,
    required String robotName,
    String? depthSensorName,
    String? movementSensorName,
  }) async {
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
        await _getWaterDepthData();
      }
    });
  }

  Future<void> _getWaterDepthData() async {
    try {
      emit(const WaterDepthScreenState.loading());

      final waterDepthData = await _getWaterDepthDataUseCase(
        locationId: locationId,
        robotName: robotName,
        depthSensorName: depthSensorName,
        movementSensorName: movementSensorName,
      );

      emit(WaterDepthScreenState.loaded(waterDepthData));
    } catch (error, st) {
      Fimber.e(
        '$_tag Error while fetching water depth data',
        ex: error,
        stacktrace: st,
      );
      emit(const WaterDepthScreenState.error());
    }
  }

  void setDepthFilters(WaterFilter filter) => _setWaterDepthFiltersUseCase(filter);

  @override
  Future<void> close() {
    _refreshFilters?.cancel();
    return super.close();
  }
}
