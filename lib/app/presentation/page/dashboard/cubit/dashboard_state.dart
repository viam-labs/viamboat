import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/data/viam/common/v1/common.pb.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.idle() = DashboardStateIdle;

  const factory DashboardState.loading() = DashboardStateLoading;

  const factory DashboardState.loaded(List<ResourceName> sensors) = DashboardStateLoaded;

  const factory DashboardState.error([String? message]) = DashboardStateError;
}
