import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/data_viam/model/analytics_data.dart';

part 'analytics_state.freezed.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState.idle() = AnalyticsStateIdle;

  const factory AnalyticsState.loading() = AnalyticsStateLoading;

  const factory AnalyticsState.loaded(List<AnalyticsData> analyticsData) = AnalyticsStateLoaded;

  const factory AnalyticsState.error() = AnalyticsStateError;
}
