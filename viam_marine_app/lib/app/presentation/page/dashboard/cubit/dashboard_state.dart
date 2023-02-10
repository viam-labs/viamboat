import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.idle() = DashboardStateIdle;

  const factory DashboardState.loading() = DashboardStateLoading;

  const factory DashboardState.loaded(
    List<ViamAppResourceName> sensors,
    List<ViamAppResourceName> positionSensors,
    List<ViamAppResourceName> cameraSensors,
    String currentBoatName,
  ) = DashboardStateLoaded;

  const factory DashboardState.error([String? message]) = DashboardStateError;

  const factory DashboardState.reloadApp() = DashboardStateReloadApp;
}
