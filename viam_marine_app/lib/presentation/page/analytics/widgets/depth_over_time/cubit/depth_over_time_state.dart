import 'package:freezed_annotation/freezed_annotation.dart';

part 'depth_over_time_state.freezed.dart';

@freezed
class DepthOverTimeState with _$DepthOverTimeState {
  const factory DepthOverTimeState.loading() = DepthOverTimeStateLoading;

  const factory DepthOverTimeState.loaded() = DepthOverTimeStateLoaded;
}
