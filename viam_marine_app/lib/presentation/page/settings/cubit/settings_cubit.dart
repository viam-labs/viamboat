import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/broadcaster/boat_update_broadcaster.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart';
import 'package:viam_marine/domain/clear_cache/use_case/clear_cache_use_case.dart';
import 'package:viam_marine/domain/local_photo/use_case/capture_photo_for_boat_use_case.dart';
import 'package:viam_marine/domain/local_photo/use_case/choose_photo_for_boat_use_case.dart';
import 'package:viam_marine/domain/auth/usecase/logout_use_case.dart';
import 'package:viam_marine/domain/local_photo/use_case/remove_photo_for_boat_use_case.dart';
import 'package:viam_marine/presentation/page/settings/cubit/settings_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';
import 'package:viam_marine/utils/viam_constants.dart';

@injectable
class SettingsCubit extends ViamCubit<SettingsPageState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final SubscribeToBoatUpdateStreamUseCase _subscribeToBoatUpdateStreamUseCase;
  final ChoosePhotoForBoatUseCase _choosePhotoForBoatUseCase;
  final CapturePhotoForBoatUseCase _capturePhotoForBoatUseCase;
  final RemovePhotoForBoatUseCase _removePhotoForBoatUseCase;
  final LogoutUseCase _logoutUseCase;
  final ClearCacheUseCase _clearCacheUseCase;

  late List<ViamBoat> boats;
  late String currentRobotId;
  ViamBoat? _boat;
  StreamSubscription<BoatUpdateEvent>? _boatUpdateStreamSubscription;

  SettingsCubit(
    this._getBoatsUseCase,
    this._subscribeToBoatUpdateStreamUseCase,
    this._choosePhotoForBoatUseCase,
    this._capturePhotoForBoatUseCase,
    this._removePhotoForBoatUseCase,
    this._logoutUseCase,
    this._clearCacheUseCase,
  ) : super(const SettingsPageState.loading());

  Future<void> init(String robotId) async {
    currentRobotId = robotId;
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

    return boats.firstWhere((boat) => boat.id == currentRobotId);
  }

  Future<void> capturePhoto() async {
    try {
      await _capturePhotoForBoatUseCase(currentRobotId);
      await init(currentRobotId);
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
      await _choosePhotoForBoatUseCase(currentRobotId);
      await init(currentRobotId);
    } catch (error, st) {
      Fimber.e(
        'Error during choosing photo for boat',
        ex: error,
        stacktrace: st,
      );
    }
  }

  Future<void> removePhoto() async {
    try {
      await _removePhotoForBoatUseCase(currentRobotId);
      await init(currentRobotId);
    } catch (error, st) {
      Fimber.e(
        'Error during removing photo for boat',
        ex: error,
        stacktrace: st,
      );
    }
  }

  Future<void> logout() async {
    await _logoutUseCase(scheme: ViamConstants.scheme);

    await _clearCacheUseCase();
    emit(const SettingsPageState.reloadApp());
  }

  @override
  Future<void> close() {
    _boatUpdateStreamSubscription?.cancel();
    return super.close();
  }
}
