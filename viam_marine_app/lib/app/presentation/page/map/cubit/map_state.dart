import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';

part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.idle() = MapStateIdle;

  const factory MapState.loading() = MapStateLoading;

  const factory MapState.loaded({
    required double latitude,
    required double longitude,
    required double heading,
  }) = MapStateLoaded;

  const factory MapState.error(
    ViamError viamError,
    double? lastLatitude,
    double? lastLongitude,
    double? lastHeading,
  ) = MapStateError;

  const factory MapState.empty() = MapStateEmpty;
}
