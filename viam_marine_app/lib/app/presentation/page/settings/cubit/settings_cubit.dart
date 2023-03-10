import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/analytics/usecase/log_delete_boat_event_use_case.dart';
import 'package:viam_marine/app/domain/boat/broadcaster/boat_update_broadcaster.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/delete_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/remove_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart';
import 'package:viam_marine/app/domain/local_photo/use_case/capture_photo_for_boat_use_case.dart';
import 'package:viam_marine/app/domain/local_photo/use_case/choose_photo_for_boat_use_case.dart';
import 'package:viam_marine/app/presentation/page/settings/cubit/settings_page_state.dart';

@injectable
class SettingsCubit extends Cubit<SettingsPageState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final DeleteBoatUseCase _deleteBoatUseCase;
  final LogDeleteBoatEventUseCase _logDeleteBoatEventUseCase;
  final RemoveCurrentBoatIdUseCase _removeCurrentBoatIdUseCase;
  final SetCurrentBoatIdUseCase _setCurrentBoatIdUseCase;
  final SubscribeToBoatUpdateStreamUseCase _subscribeToBoatUpdateStreamUseCase;
  final ChoosePhotoForBoatUseCase _choosePhotoForBoatUseCase;
  final CapturePhotoForBoatUseCase _capturePhotoForBoatUseCase;

  late List<ViamBoat> boats;
  late String? currentBoatId;
  ViamBoat? _boat;
  StreamSubscription<BoatUpdateEvent>? _boatUpdateStreamSubscription;

  SettingsCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
    this._deleteBoatUseCase,
    this._logDeleteBoatEventUseCase,
    this._removeCurrentBoatIdUseCase,
    this._setCurrentBoatIdUseCase,
    this._subscribeToBoatUpdateStreamUseCase,
    this._choosePhotoForBoatUseCase,
    this._capturePhotoForBoatUseCase,
  ) : super(const SettingsPageState.loading());

  Future<void> init() async {
    _boat = await _getCurrentBoat();

    await _listenToBoatUpdateStream();
    emit(SettingsPageState.loaded(
      boat: _boat,
    ));
  }

  Future<void> _listenToBoatUpdateStream() async {
    await _boatUpdateStreamSubscription?.cancel();

    _boatUpdateStreamSubscription = _subscribeToBoatUpdateStreamUseCase().listen(_boatUpdateStreamListener);
  }

  Future<void> _boatUpdateStreamListener(BoatUpdateEvent event) async {
    const SettingsPageState.loading();

    _boat = await _getCurrentBoat();

    emit(SettingsPageState.loaded(boat: _boat));
  }

  Future<ViamBoat> _getCurrentBoat() async {
    boats = await _getBoatsUseCase();
    currentBoatId = _getCurrentBoatIdUseCase();

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
    } catch (error, st) {
      emit(SettingsPageState.loaded(boat: _boat));
      Fimber.e(
        'Error during deleting boat',
        ex: error,
        stacktrace: st,
      );
    }
  }

  void navigateToChangeBoatNamePage() {
    emit(SettingsPageState.navigateToChangeBoatName(boats, currentBoatId));
    emit(SettingsPageState.loaded(boat: _boat));
  }

  Future<void> capturePhoto() async {
    try {
      await _capturePhotoForBoatUseCase(currentBoatId!);
      await init();
    } catch (error, st) {
      Fimber.e(
        'Error during capturing photo',
        ex: error,
        stacktrace: st,
      );
    }
  }

  Future<void> choosePhoto() async {
    try {
      await _choosePhotoForBoatUseCase(currentBoatId!);
      await init();
    } catch (error) {
      //TODO: add error handling / Add error dialog
      //ignore: unused_local_variable
      final e = error;
    }
  }

  @override
  Future<void> close() {
    _boatUpdateStreamSubscription?.cancel();
    return super.close();
  }
}
