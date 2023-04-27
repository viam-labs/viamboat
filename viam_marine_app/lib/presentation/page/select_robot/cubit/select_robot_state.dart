import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';

part 'select_robot_state.freezed.dart';

@freezed
class SelectRobotState with _$SelectRobotState {
  const factory SelectRobotState.idle() = SelectRobotStateIdle;

  const factory SelectRobotState.organizationsLoading() = SelectRobotStateOrganizationsLoading;

  const factory SelectRobotState.locationsLoading() = SelectRobotStateLocationsLoading;

  const factory SelectRobotState.robotsLoading() = SelectRobotStateRobotsLoading;

  const factory SelectRobotState.organizationsLoaded({
    required List<ViamAppOrganization> organizations,
  }) = SelectRobotStateOrganizationsLoaded;

  const factory SelectRobotState.locationsLoaded({
    required List<ViamAppLocation> locations,
  }) = SelectRobotStateLocationsLoaded;

  const factory SelectRobotState.robotsLoaded({
    required List<ViamAppRobot> locations,
  }) = SelectRobotStateRobotsLoaded;

  const factory SelectRobotState.goToMainPage(ViamAppRobot robot) = SelectRobotStateGoToMainPage;
}
