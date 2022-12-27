import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_boat_state.freezed.dart';

@freezed
class AddBoatState with _$AddBoatState {
  const factory AddBoatState.reloadApp() = AddBoatStateReloadApp;

  const factory AddBoatState.loading({required bool canProceed}) = AddBoatStateLoading;

  const factory AddBoatState.loaded({required bool canProceed}) = AddBoatStateLoaded;

  const factory AddBoatState.error([String? msg]) = AddBoatStateError;

  const factory AddBoatState.showConfirmationPopup() = AddBoatStateShowConfirmationPopup;

  const factory AddBoatState.leavePage() = AddBoatStateLeavePage;

  const factory AddBoatState.navigateToScanQrPage() = AddBoatStateNavigateToScanQrPage;
}
