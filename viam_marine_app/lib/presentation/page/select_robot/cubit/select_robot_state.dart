import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';

part 'select_robot_state.freezed.dart';

@freezed
class SelectRobotState with _$SelectRobotState {
  const factory SelectRobotState.idle() = SelectRobotStateIdle;

  const factory SelectRobotState.loading() = SelectRobotStateLoading;

  const factory SelectRobotState.organizationsLoading() = SelectRobotStateOrganizationsLoading;

  const factory SelectRobotState.locationsAndRobotsLoading() = SelectRobotStateLocationsAndRobotsLoading;

  const factory SelectRobotState.organizationsLoaded({
    required List<ViamAppOrganization> organizations,
  }) = SelectRobotStateOrganizationsLoaded;

  const factory SelectRobotState.locationsAndRobotsLoaded({
    required List<ViamAppLocation> locations,
    required List<ViamAppRobot> robots,
    required String organizationName,
  }) = SelectRobotStateLocationsAndRobotsLoaded;

  const factory SelectRobotState.connectingToRobot() = SelectRobotStateConnectingToRobot;

  const factory SelectRobotState.goToMainPage(RobotConfig config) = SelectRobotStateGoToMainPage;

  const factory SelectRobotState.logout() = SelectRobotStateLogout;

  const factory SelectRobotState.connectionError(
    ViamAppRobot robot,
    String secret,
  ) = SelectRobotStateConnectionError;

  const factory SelectRobotState.logoutError() = SelectRobotStateLogoutError;

  const factory SelectRobotState.organizationsError() = SelectRobotStateOrganizationsError;

  const factory SelectRobotState.locationsAndRobotsError(String organizationId) =
      SelectRobotStateLocationsAndRobotsError;
}
