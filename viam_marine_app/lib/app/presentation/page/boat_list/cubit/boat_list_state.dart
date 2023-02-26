import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';

part 'boat_list_state.freezed.dart';

@freezed
class BoatListState with _$BoatListState {
  const factory BoatListState.loading({required List<ViamBoat> boats}) = BoatListStateLoading;

  const factory BoatListState.loaded({
    required List<ViamBoat> boats,
    String? currentBoatId,
  }) = BoatListStateLoaded;

  const factory BoatListState.reloadApp() = BoatListStateReloadApp;

  const factory BoatListState.showConfirmationPopup({required String boatId}) = BoatListStateShowConfirmationPopup;

  const factory BoatListState.showEditBoatNamePopup({
    required String boatName,
    required String boatId,
    required ViamError? viamError,
  }) = BoatListStateShowEditBoatNamePopup;

  const factory BoatListState.closeConfirmationPopup() = BoatListStateCloseConfirmationPopup;
}
