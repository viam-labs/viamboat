import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/analytics/usecase/log_delete_boat_event_use_case.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/delete_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/remove_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/app/presentation/page/settings/cubit/settings_page_state.dart';

@injectable
class SettingsCubit extends Cubit<SettingsPageState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final DeleteBoatUseCase _deleteBoatUseCase;
  final LogDeleteBoatEventUseCase _logDeleteBoatEventUseCase;
  final RemoveCurrentBoatIdUseCase _removeCurrentBoatIdUseCase;
  final SetCurrentBoatIdUseCase _setCurrentBoatIdUseCase;

  ViamBoat? _boat;

  SettingsCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
    this._deleteBoatUseCase,
    this._logDeleteBoatEventUseCase,
    this._removeCurrentBoatIdUseCase,
    this._setCurrentBoatIdUseCase,
  ) : super(const SettingsPageState.loading());

  Future<void> init() async {
    _boat = await _getCurrentBoat();

    emit(SettingsPageState.loaded(boat: _boat));
  }

  Future<ViamBoat> _getCurrentBoat() async {
    final boats = await _getBoatsUseCase();
    final currentBoatId = _getCurrentBoatIdUseCase();

    return boats.firstWhere((boat) => boat.id == currentBoatId);
  }

  void showConfirmationPopup() {
    emit(const SettingsPageState.showConfirmationPopup());
    emit(SettingsPageState.loaded(boat: _boat));
  }

  Future<void> deleteBoat() async {
    final boat = _boat;
    if (boat == null) return;

    try {
      emit(SettingsPageState.loading(boat: _boat));
      await _deleteBoatUseCase(boat.id);
      final boats = await _getBoatsUseCase();
      if (boats.isEmpty) {
        await _removeCurrentBoatIdUseCase();
      } else {
        final newId = boats.first.id;
        await _setCurrentBoatIdUseCase(newId);
      }
      _boat = null;

      unawaited(
        _logDeleteBoatEventUseCase(
          id: boat.id,
          address: boat.address,
          name: boat.name,
        ),
      );

      emit(const SettingsPageState.reloadApp());
    } catch (error) {
      emit(SettingsPageState.loaded(boat: _boat));
      //TODO: add error handling
      //ignore: unused_local_variable
      final e = error;
    }
  }

  void navigateToChangeBoatNamePage() {
    emit(const SettingsPageState.navigateToChangeBoatName());
    emit(SettingsPageState.loaded(boat: _boat));
  }
}
