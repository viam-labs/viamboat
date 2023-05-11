import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';

part 'depth_over_time_page_state.freezed.dart';

@freezed
class DepthOverTimePageState with _$DepthOverTimePageState {
  const factory DepthOverTimePageState.idle() = DepthOverTimePageStateIdle;

  const factory DepthOverTimePageState.loading() = DepthOverTimePageStateLoading;

  const factory DepthOverTimePageState.loaded(
    List<DepthOverTime> depthOverTime,
    double yAxisMaxValue,
  ) = DepthOverTimePageStateLoaded;
}
