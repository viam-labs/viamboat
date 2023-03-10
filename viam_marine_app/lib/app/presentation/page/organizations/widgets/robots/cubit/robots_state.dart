import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';

part 'robots_state.freezed.dart';

@freezed
class RobotsState with _$RobotsState {
  const factory RobotsState.idle() = RobotsStateIdle;

  const factory RobotsState.loading() = RobotsStateLoading;

  const factory RobotsState.loaded(List<ViamAppRobot> robots) = RobotsStateLoaded;

  const factory RobotsState.goToMainPage(String robotName) = RobotsStateGoToMainPage;
}
