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
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/extensions/list_extension.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_state.dart';

@injectable
class BoatListCubit extends Cubit<BoatListState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final DeleteBoatUseCase _deleteBoatUseCase;
  final SetCurrentBoatIdUseCase _setCurrentBoatIdUseCase;
  final RemoveCurrentBoatIdUseCase _removeCurrentBoatIdUseCase;
  final LogDeleteBoatEventUseCase _logDeleteBoatEventUseCase;
  final ChangeBoatNameUseCase _changeBoatNameUseCase;

  late String? _currentBoatId;
  List<ViamBoat> _boats = [];

  BoatListCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
    this._deleteBoatUseCase,
    this._setCurrentBoatIdUseCase,
    this._removeCurrentBoatIdUseCase,
    this._logDeleteBoatEventUseCase,
    this._changeBoatNameUseCase,
  ) : super(const BoatListState.loading(boats: []));

  Future<void> init() async {
    _boats = await _getBoatsUseCase();

    _currentBoatId = _getCurrentBoatIdUseCase();

    emit(BoatListState.loaded(
      boats: _boats,
      currentBoatId: _currentBoatId,
    ));
  }

  Future<void> changeBoat(String id) async {
    emit(BoatListState.loading(boats: _boats));

    if (_currentBoatId == id) {
      emit(BoatListState.loaded(
        boats: _boats,
        currentBoatId: _currentBoatId,
      ));
      return;
    }

    await _setCurrentBoatIdUseCase(id);

    emit(const BoatListState.reloadApp());
  }

  void showConfirmationPopup(String id) {
    emit(BoatListState.showConfirmationPopup(boatId: id));
    emit(BoatListState.loaded(
      boats: _boats,
      currentBoatId: _currentBoatId,
    ));
  }

  void showEditPopup(String boatName, String id, [ViamError? error]) {
    emit(BoatListState.showEditBoatNamePopup(
      boatName: boatName,
      boatId: id,
      viamError: error,
    ));
    emit(BoatListState.loaded(
      boats: _boats,
      currentBoatId: _currentBoatId,
    ));
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

    emit(const BoatListState.closeConfirmationPopup());

    if (_boats.isEmpty) {
      await _handleEmptyBoatsAfterDeletion();
      return;
    }

    if (_currentBoatId == boatId) {
      await _handleCurrentBoatDeletion();
      return;
    }

    emit(BoatListState.loaded(
      boats: _boats,
      currentBoatId: _currentBoatId,
    ));
  }

  Future<void> updateBoatName(String newBoatName, String boatId) async {
    try {
      if (!_boats.containsBoatName(newBoatName)) {
        await _changeBoatNameUseCase(id: boatId, name: newBoatName);
        _boats = await _getBoatsUseCase();

        if (_currentBoatId == boatId) {
          emit(const BoatListState.reloadApp());
        } else {
          emit(BoatListState.loaded(
            boats: _boats,
            currentBoatId: _currentBoatId,
          ));
        }
      } else {
        showEditPopup(
          newBoatName,
          boatId,
          ViamError.boatNameTaken,
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
    emit(const BoatListState.reloadApp());
  }

  Future<void> _handleCurrentBoatDeletion() async {
    final newId = _boats.first.id;
    await _setCurrentBoatIdUseCase(newId);
    emit(const BoatListState.reloadApp());
  }
}
