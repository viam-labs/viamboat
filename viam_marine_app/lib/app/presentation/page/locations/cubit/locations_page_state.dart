import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';

part 'locations_page_state.freezed.dart';

@freezed
class LocationsPageState with _$LocationsPageState {
  const factory LocationsPageState.idle() = LocationsPageStateIdle;

  const factory LocationsPageState.loading() = LocationsPageStateLoading;

  const factory LocationsPageState.loaded(
      {required List<ViamAppRobot> robots, required List<ViamAppLocation> locations}) = LocationsPageStateLoaded;

  const factory LocationsPageState.goToMainPage(ViamAppRobot robot) = LocationsPageStateGoToMainPage;

  const factory LocationsPageState.connectionError(ViamAppRobot robot, String secret) =
      LocationsPageStateConnectionError;
}
