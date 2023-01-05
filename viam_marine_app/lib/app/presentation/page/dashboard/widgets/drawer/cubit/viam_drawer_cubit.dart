import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/delete_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/remove_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_state.dart';

@injectable
class ViamDrawerCubit extends Cubit<ViamDrawerState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final DeleteBoatUseCase _deleteBoatUseCase;
  final SetCurrentBoatIdUseCase _setCurrentBoatIdUseCase;
  final RemoveCurrentBoatIdUseCase _removeCurrentBoatIdUseCase;

  late String? currentBoatId;
  List<ViamBoat> boats = [];

  ViamDrawerCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
    this._deleteBoatUseCase,
    this._setCurrentBoatIdUseCase,
    this._removeCurrentBoatIdUseCase,
  ) : super(const ViamDrawerState.loading(boats: []));

  Future<void> init() async {
    boats = await _getBoatsUseCase();

    currentBoatId = _getCurrentBoatIdUseCase();

    emit(ViamDrawerState.loaded(boats: boats));
  }

  Future<void> changeBoat(String id) async {
    emit(ViamDrawerState.loading(boats: boats));

    if (currentBoatId == id) {
      emit(ViamDrawerState.loaded(boats: boats));
      return;
    }

    await _setCurrentBoatIdUseCase(id);

    emit(const ViamDrawerState.reloadApp());
  }

  void showConfirmationPopup(String id) {
    emit(ViamDrawerState.showConfirmationPopup(boatId: id));
    emit(ViamDrawerState.loaded(boats: boats));
  }

  Future<void> deleteBoat(String boatId) async {
    await _deleteBoatUseCase(boatId);
    boats = await _getBoatsUseCase();

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
    await _removeCurrentBoatIdUseCase();
    emit(const ViamDrawerState.reloadApp());
  }

  Future<void> _handleCurrentBoatDeletion() async {
    final newId = boats.first.id;
    await _setCurrentBoatIdUseCase(newId);
    emit(const ViamDrawerState.reloadApp());
  }
}
