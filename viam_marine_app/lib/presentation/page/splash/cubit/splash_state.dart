import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loading() = SplashStateLoading;

  const factory SplashState.goToAddBoat() = SplashStateGoToAddBoat;

  const factory SplashState.goToSelectRobot() = SplashStateGoToSelectRobot;
}
