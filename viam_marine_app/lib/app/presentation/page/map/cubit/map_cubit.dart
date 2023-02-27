import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/current_time/get_current_time_use_case.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/app/domain/movement/usecase/get_position_use_case.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/usecase/get_sensor_data_use_case.dart';
import 'package:viam_marine/app/presentation/page/map/cubit/map_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';
import 'package:viam_marine/app/utils/viam_constants.dart';

const _compassKey = 'compass';

@injectable
class MapCubit extends ViamCubit<MapState> {
  final GetPostionUseCase _getPostionUseCase;
  final GetSensorDataUseCase _getSensorDataUseCase;
  final GetCurrentTimeUseCase _getCurrentTimeUseCase;

  late StreamSubscription streamSubscription;

  ViamAppPosition? _lastPosition;
  double? _lastHeading;
  DateTime? _firstErrorDate;

  MapCubit(
    this._getPostionUseCase,
    this._getSensorDataUseCase,
    this._getCurrentTimeUseCase,
  ) : super(const MapState.idle());

  Future<void> init(ViamAppResourceName? resourceName) async {
    emit(const MapState.loading());

    if (resourceName != null) {
      streamSubscription = Stream.periodic(const Duration(seconds: 1)).listen((event) async {
        await _getData(resourceName);
      });
    } else {
      emit(const MapState.empty());
    }
  }

  Future<void> _getData(ViamAppResourceName resourceName) async {
    try {
      final positionData = await _getPostionUseCase(resourceName);

      final heading = await _getHeading(resourceName);

      _lastPosition = positionData;
      _lastHeading = heading;

      emit(MapState.loaded(
        latitude: positionData.latitude,
        longitude: positionData.longitude,
        heading: heading,
      ));
    } catch (_) {
      final currentErrorDate = _getCurrentTimeUseCase();
      _firstErrorDate ??= currentErrorDate;

      _handleMapError(currentErrorDate);
    }
  }

  Future<double> _getHeading(ViamAppResourceName resourceName) async {
    final senosorReadings = await _getSensorDataUseCase([resourceName]);
    final readings = senosorReadings.first.readings;

    _firstErrorDate = null;

    return readings[_compassKey] ?? 0.0;
  }

  void _handleMapError(DateTime currentErrorDate) {
    final timeBetweenErrorsInSeconds = currentErrorDate.difference(_firstErrorDate!).inSeconds;
    if (timeBetweenErrorsInSeconds < ViamConstants.warningTimeInSeconds) {
      emit(MapState.loaded(
        latitude: _lastPosition?.latitude ?? 0.0,
        longitude: _lastPosition?.longitude ?? 0.0,
        heading: _lastHeading ?? 0.0,
      ));
    } else if (timeBetweenErrorsInSeconds >= ViamConstants.warningTimeInSeconds &&
        timeBetweenErrorsInSeconds < ViamConstants.errorTimeInSeconds) {
      _emitError(ViamError.warning);
    } else {
      _emitError(ViamError.error);
    }
  }

  void _emitError(ViamError viamError) {
    emit(MapState.error(
      viamError,
      _lastPosition?.latitude,
      _lastPosition?.longitude,
      _lastHeading,
    ));
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
