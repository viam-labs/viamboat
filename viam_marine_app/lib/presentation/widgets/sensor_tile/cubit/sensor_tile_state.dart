import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/error/model/viam_error.dart';

part 'sensor_tile_state.freezed.dart';

@freezed
class SensorTileState with _$SensorTileState {
  const factory SensorTileState.idle() = SensorTileStateIdle;

  const factory SensorTileState.loading() = SensorTileStateLoading;

  const factory SensorTileState.graphicalSensorLoaded(
    String name,
    double levelPercentage,
    double capacity,
  ) = SensorTileStateGraphicalSensorLoaded;

  const factory SensorTileState.sensorLoaded(
    String name,
    double value,
  ) = SensorTileStateLoaded;

  const factory SensorTileState.normalSensorError(
    ViamError viamError,
    String? lastName,
    double? lastValue,
  ) = SensorTileStateNormalSensorError;

  const factory SensorTileState.graphicalSensorError(
    ViamError viamError,
    String? lastName,
    double? lastLevelPercentage,
    double? lastCapacity,
  ) = SensorTileStateGraphicalSensorError;

  const factory SensorTileState.showTopSnackbarError(ViamError viamError) = SensorTileStateTopSnackbarError;
}
