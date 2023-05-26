import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState.loading() = LoginPageStateLoading;

  const factory LoginPageState.loaded() = LoginPageStateLoaded;

  const factory LoginPageState.error() = LoginPageStateError;

  const factory LoginPageState.loginSuccessful() = LoginPageStateLoginSuccessful;
}
