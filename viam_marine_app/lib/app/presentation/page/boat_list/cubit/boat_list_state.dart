import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';

part 'boat_list_state.freezed.dart';

@freezed
class BoatListState with _$BoatListState {
  const factory BoatListState.loading({required List<ViamBoat> boats}) = BoatListStateLoading;

  const factory BoatListState.loaded({
    required List<ViamBoat> boats,
    String? currentBoatId,
  }) = BoatListStateLoaded;

  const factory BoatListState.reloadApp() = BoatListStateReloadApp;
}
