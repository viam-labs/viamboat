import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';

part 'viam_drawer_state.freezed.dart';

@freezed
class ViamDrawerState with _$ViamDrawerState {
  const factory ViamDrawerState.loading({required List<ViamBoat> boats}) = ViamDrawerStateLoading;

  const factory ViamDrawerState.loaded({required List<ViamBoat> boats}) = ViamDrawerStateLoaded;

  const factory ViamDrawerState.reloadApp() = ViamDrawerStateReloadApp;

  const factory ViamDrawerState.showConfirmationPopup() = ViamDrawerStateShowConfirmationPopup;
}
