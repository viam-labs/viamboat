import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location.dart';

part 'location_state.freezed.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.idle() = LocationStateIdle;

  const factory LocationState.loading() = LocationStateLoading;

  const factory LocationState.loaded(List<ViamAppLocation> location) = LocationStateLoaded;
}
