import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_water_temperature_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/set_water_temperature_filters_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class WaterTemperatureCubit extends ViamCubit<WaterTemperatureScreenState> {
  static const _tag = 'WaterTemperatureCubit';

  final GetWaterTemperatureDataUseCase _getWaterTemperatureDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;
  final SetWaterTemperatureFiltersUseCase _setWaterTemperatureFiltersUseCase;

  StreamSubscription? _refreshFilters;
  late String locationId;
  late String robotName;
  late String? tempSensorName;
  late String? movementSensorName;

  WaterTemperatureCubit(
    this._getWaterTemperatureDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
    this._setWaterTemperatureFiltersUseCase,
  ) : super(const WaterTemperatureScreenState.idle());

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

    _listenToRefreshFilters();
    await _getWaterTemperatureData();
  }

  void _listenToRefreshFilters() {
    _refreshFilters?.cancel();
    _refreshFilters = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.waterTemperature) {
        await _getWaterTemperatureData();
      }
    });
  }

  Future<void> _getWaterTemperatureData() async {
    try {
      emit(const WaterTemperatureScreenState.loading());

      final List<WaterTemperature> waterTemperatureData = await _getWaterTemperatureDataUseCase(
        locationId: locationId,
        robotName: robotName,
        tempSensorName: tempSensorName,
        movementSensorName: movementSensorName,
      );

      emit(WaterTemperatureScreenState.loaded(waterTemperatureData));
    } catch (error, st) {
      Fimber.e(
        '$_tag Error while fetching water depth data',
        ex: error,
        stacktrace: st,
      );
      emit(const WaterTemperatureScreenState.error());
    }
  }

  void setTemperatureFilters(WaterFilter filter) => _setWaterTemperatureFiltersUseCase(filter);

  @override
  Future<void> close() {
    _refreshFilters?.cancel();
    return super.close();
  }
}
