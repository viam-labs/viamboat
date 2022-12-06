import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_boat_state.freezed.dart';

@freezed
class AddBoatState with _$AddBoatState {
  const factory AddBoatState.initial() = _Initial;

  const factory AddBoatState.goToDashboard() = AddBoatStateGoToDashboard;

  const factory AddBoatState.loading() = AddBoatStateLoading;

  const factory AddBoatState.loaded({required bool canProceed}) = AddBoatStateLoaded;
}
