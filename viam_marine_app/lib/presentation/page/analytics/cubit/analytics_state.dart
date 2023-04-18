import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart';

part 'analytics_state.freezed.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState.idle() = AnalyticsStateIdle;

  const factory AnalyticsState.loading() = AnalyticsStateLoading;

  const factory AnalyticsState.loaded(List<AnalyticsType> analyticsTypes) = AnalyticsStateLoaded;
}
