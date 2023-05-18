import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';

part 'depth_over_time_state.freezed.dart';

@freezed
class DepthOverTimeState with _$DepthOverTimeState {
  const factory DepthOverTimeState.idle() = DepthOverTimeStateIdle;

  const factory DepthOverTimeState.loading() = DepthOverTimeStateLoading;

  const factory DepthOverTimeState.loaded(
    List<DepthOverTime> depthOverTime,
    double? yAxisMaxValue,
    double? yAxisMinValue,
  ) = DepthOverTimeStateLoaded;

  const factory DepthOverTimeState.error() = DepthOverTimeStateError;
}
