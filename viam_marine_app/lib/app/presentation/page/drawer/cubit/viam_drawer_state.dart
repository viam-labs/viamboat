import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';

part 'viam_drawer_state.freezed.dart';

@freezed
class ViamDrawerState with _$ViamDrawerState {
  const factory ViamDrawerState.loading({required List<ViamBoat> boats}) = ViamDrawerStateLoading;

  const factory ViamDrawerState.loaded({
    required List<ViamBoat> boats,
    required String? currentBoatId,
  }) = ViamDrawerStateLoaded;

  const factory ViamDrawerState.reloadApp() = ViamDrawerStateReloadApp;

  const factory ViamDrawerState.showConfirmationPopup({required String boatId}) = ViamDrawerStateShowConfirmationPopup;

  const factory ViamDrawerState.showEditBoatNamePopup({
    required String boatName,
    required String boatId,
    required ViamError? viamError,
  }) = ViamDrawerStateShowEditBoatNamePopup;

  const factory ViamDrawerState.closeConfirmationPopup() = ViamDrawerStateCloseConfirmationPopup;
}
