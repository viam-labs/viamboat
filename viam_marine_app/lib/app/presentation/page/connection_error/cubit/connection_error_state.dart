import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_error_state.freezed.dart';

@freezed
class ConnectionErrorState with _$ConnectionErrorState {
  const factory ConnectionErrorState.loading() = ConnectionErrorStateLoading;

  const factory ConnectionErrorState.loaded() = ConnectionErrorStateLoaded;

  const factory ConnectionErrorState.goToMainPage() = ConnectionErrorStateGoToMainPage;
}
