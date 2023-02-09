import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';

part 'map_tile_state.freezed.dart';

@freezed
class MapTileState with _$MapTileState {
  const factory MapTileState.idle() = MapTileStateIdle;

  const factory MapTileState.loaded({
    required double latitude,
    required double longitude,
    required double heading,
  }) = MapTileStateLoaded;

  const factory MapTileState.error(
    ViamError viamError,
    double? lastLatitude,
    double? lastLongitude,
    double? lastHeading,
  ) = MapTileStateError;
}
