import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.idle() = DashboardStateIdle;

  const factory DashboardState.loading() = DashboardStateLoading;

  const factory DashboardState.loaded({required List sensors}) = DashboardStateLoaded;

  const factory DashboardState.error([String? message]) = DashboardStateError;
}
