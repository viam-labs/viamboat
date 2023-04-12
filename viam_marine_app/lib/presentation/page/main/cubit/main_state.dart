import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.idle() = MainStateIdle;

  const factory MainState.loading() = MainstateLoading;

  const factory MainState.loaded(
    List<ViamAppResourceName> sensors,
    List<ViamAppResourceName> movementSensors,
    List<ViamAppResourceName> cameraSensors,
  ) = MainStateLaoded;

  const factory MainState.error([String? message]) = MainStateError;

  const factory MainState.goToOrganizationPage() = MainStateGoToOrganization;

  const factory MainState.logout() = MainStateLogout;
}
