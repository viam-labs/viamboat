import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/domain/error/model/viam_error.dart';

part 'add_boat_state.freezed.dart';

@freezed
class AddBoatState with _$AddBoatState {
  const factory AddBoatState.reloadApp() = AddBoatStateReloadApp;

  const factory AddBoatState.loading({required bool canProceed}) = AddBoatStateLoading;

  const factory AddBoatState.loaded({required bool canProceed}) = AddBoatStateLoaded;

  const factory AddBoatState.error([ViamError? error]) = AddBoatStateError;

  const factory AddBoatState.showConfirmationPopup() = AddBoatStateShowConfirmationPopup;

  const factory AddBoatState.leavePage() = AddBoatStateLeavePage;

  const factory AddBoatState.navigateToScanQrPage() = AddBoatStateNavigateToScanQrPage;

  const factory AddBoatState.navigateToSelectRobotPage() = AddBoatStateNavigateToSelectRobotPage;
}
