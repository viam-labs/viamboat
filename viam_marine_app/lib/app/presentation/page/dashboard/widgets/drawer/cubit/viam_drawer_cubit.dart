import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_state.dart';

@injectable
class ViamDrawerCubit extends Cubit<ViamDrawerState> {
  final BoatService _boatService;

  late String? currentBoatId;
  List<ViamBoat> boats = [];

  ViamDrawerCubit(this._boatService) : super(const ViamDrawerState.loading(boats: []));

  Future<void> init() async {
    boats = await _boatService.getBoats();

    currentBoatId = _boatService.getCurrentBoatId();

    emit(ViamDrawerState.loaded(boats: boats));
  }

  Future<void> changeBoat(String id) async {
    emit(ViamDrawerState.loading(boats: boats));

    if (currentBoatId == id) {
      emit(ViamDrawerState.loaded(boats: boats));
      return;
    }

    await _boatService.setCurrentBoatId(id);

    emit(const ViamDrawerState.reloadApp());
  }

  void showConfirmationPopup(String id) {
    emit(ViamDrawerState.showConfirmationPopup(boatId: id));
    emit(ViamDrawerState.loaded(boats: boats));
  }

  Future<void> deleteBoat(String boatId) async {
    await _boatService.deleteBoat(boatId);
    boats = await _boatService.getBoats();

    if (boats.isEmpty) {
      await _handleEmptyBoatsAfterDeletion();
      return;
    }

    if (currentBoatId == boatId) {
      await _handleCurrentBoatDeletion();
      return;
    }

    emit(const ViamDrawerState.closeConfirmationPopup());

    emit(ViamDrawerState.loaded(boats: boats));
  }

  Future<void> _handleEmptyBoatsAfterDeletion() async {
    await _boatService.removeCurrentBoatId();
    emit(const ViamDrawerState.reloadApp());
  }

  Future<void> _handleCurrentBoatDeletion() async {
    final newId = boats.first.id;
    await _boatService.setCurrentBoatId(newId);
    emit(const ViamDrawerState.reloadApp());
  }
}
