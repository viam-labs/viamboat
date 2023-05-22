import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_temperature_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterTemperatureCubit extends ViamCubit<WaterTemperatureTileState> {
  final GetWaterTemperatureDataUseCase _getWaterTemperatureDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;

  StreamSubscription? _refreshFilters;
  late String locationId;
  late String robotName;
  late String? tempSensorName;
  late String? movementSensorName;

  WaterTemperatureCubit(
    this._getWaterTemperatureDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
  ) : super(const WaterTemperatureTileState.loading());

  Future<void> init({
    required String locationId,
    required String robotName,
    String? tempSensorName,
    String? movementSensorName,
  }) async {
    this.locationId = locationId;
    this.robotName = robotName;
    this.tempSensorName = tempSensorName;
    this.movementSensorName = movementSensorName;

    await Future.delayed(const Duration(seconds: 1));
    _listenToRefreshFilters();
    final waterTemperatureData = await _getWaterTemperatureDataUseCase(
      locationId: locationId,
      robotName: robotName,
      tempSensorName: tempSensorName,
      movementSensorName: movementSensorName,
    );
    emit(WaterTemperatureTileState.loaded(waterTemperatureData));
  }

  void _listenToRefreshFilters() {
    _refreshFilters?.cancel();
    _refreshFilters = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.waterTemperature) {
        final waterTemperatureData = await _getWaterTemperatureDataUseCase(
          locationId: locationId,
          robotName: robotName,
          tempSensorName: tempSensorName,
          movementSensorName: movementSensorName,
        );
        emit(WaterTemperatureTileState.loaded(waterTemperatureData));
      }
    });
  }

  @override
  Future<void> close() {
    _refreshFilters?.cancel();
    return super.close();
  }
}
