import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_boat_name_state.freezed.dart';

@freezed
class ChangeBoatNameState with _$ChangeBoatNameState {
  const factory ChangeBoatNameState.idle() = ChangeBoatNameStateIdle;

  const factory ChangeBoatNameState.loading(
    String boatName,
    bool isButtonActive,
  ) = ChangeBoatNameStateLoading;

  const factory ChangeBoatNameState.loaded(
    String boatName,
    bool isButtonActive,
  ) = ChangeBoatNameStateLoaded;

  const factory ChangeBoatNameState.error() = ChangeBoatNameStateError;

  const factory ChangeBoatNameState.success() = ChangeBoatNameStateSuccess;
}
