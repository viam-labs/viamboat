import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_tile_state.freezed.dart';

@freezed
class SensorTileState with _$SensorTileState {
  const factory SensorTileState.idle() = SensorTileStateIdle;

  const factory SensorTileState.loaded(
    String name,
    double level,
    double actualValue,
    bool isGraphicalSensor,
  ) = SensorTileStateLoaded;

  const factory SensorTileState.warning() = SensorTileStateWarning;

  const factory SensorTileState.error() = SensorTileStateError;
}
