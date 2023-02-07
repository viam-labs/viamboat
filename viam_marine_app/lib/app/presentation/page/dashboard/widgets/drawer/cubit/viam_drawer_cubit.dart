import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/analytics/usecase/log_delete_boat_event_use_case.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/change_boat_name_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/delete_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/remove_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_state.dart';

@injectable
class ViamDrawerCubit extends Cubit<ViamDrawerState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final DeleteBoatUseCase _deleteBoatUseCase;
  final SetCurrentBoatIdUseCase _setCurrentBoatIdUseCase;
  final RemoveCurrentBoatIdUseCase _removeCurrentBoatIdUseCase;
  final LogDeleteBoatEventUseCase _logDeleteBoatEventUseCase;
  final ChangeBoatNameUseCase _changeBoatNameUseCase;

  late String? currentBoatId;
  List<ViamBoat> _boats = [];

  ViamDrawerCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
    this._deleteBoatUseCase,
    this._setCurrentBoatIdUseCase,
    this._removeCurrentBoatIdUseCase,
    this._logDeleteBoatEventUseCase,
    this._changeBoatNameUseCase,
  ) : super(const ViamDrawerState.loading(boats: []));

  Future<void> init() async {
    _boats = await _getBoatsUseCase();

    currentBoatId = _getCurrentBoatIdUseCase();

    emit(ViamDrawerState.loaded(boats: _boats));
  }

  Future<void> changeBoat(String id) async {
    emit(ViamDrawerState.loading(boats: _boats));

    if (currentBoatId == id) {
      emit(ViamDrawerState.loaded(boats: _boats));
      return;
    }

    await _setCurrentBoatIdUseCase(id);

    emit(const ViamDrawerState.reloadApp());
  }

  void showConfirmationPopup(String id) {
    emit(ViamDrawerState.showConfirmationPopup(boatId: id));
    emit(ViamDrawerState.loaded(boats: _boats));
  }

  void showEditPopup(String boatName, String id, [String? errorMessage]) {
    emit(ViamDrawerState.showEditBoatNamePopup(
      boatName: boatName,
      boatId: id,
      errorMessage: errorMessage,
    ));
    emit(ViamDrawerState.loaded(boats: _boats));
  }

  Future<void> deleteBoat(String boatId) async {
    final selectedBoat = _boats.firstWhere((boat) => boat.id == boatId);
    await _deleteBoatUseCase(boatId);
    _boats = await _getBoatsUseCase();

    unawaited(
      _logDeleteBoatEventUseCase(
        id: boatId,
        address: selectedBoat.address,
        name: selectedBoat.name,
      ),
    );

    emit(const ViamDrawerState.closeConfirmationPopup());

    if (_boats.isEmpty) {
      await _handleEmptyBoatsAfterDeletion();
      return;
    }

    if (currentBoatId == boatId) {
      await _handleCurrentBoatDeletion();
      return;
    }

    emit(ViamDrawerState.loaded(boats: _boats));
  }

  Future<void> updateBoatName(String newBoatName, String boatId) async {
    try {
      if (!_isBoatNameTaken(newBoatName)) {
        await _changeBoatNameUseCase(id: boatId, name: newBoatName);
        _boats = await _getBoatsUseCase();

        if (currentBoatId == boatId) {
          emit(const ViamDrawerState.reloadApp());
        } else {
          emit(ViamDrawerState.loaded(boats: _boats));
        }
      } else {
        showEditPopup(
          newBoatName,
          boatId,
          Strings.current.boat_name_taken_error_message,
        );
      }
    } catch (error) {
      //TODO: add error handling
      //ignore: unused_local_variable
      final e = error;
    }
  }

  Future<void> _handleEmptyBoatsAfterDeletion() async {
    await _removeCurrentBoatIdUseCase();
    emit(const ViamDrawerState.reloadApp());
  }

  Future<void> _handleCurrentBoatDeletion() async {
    final newId = _boats.first.id;
    await _setCurrentBoatIdUseCase(newId);
    emit(const ViamDrawerState.reloadApp());
  }

  bool _isBoatNameTaken(String name) => _boats.any((element) => element.name == name);
}
