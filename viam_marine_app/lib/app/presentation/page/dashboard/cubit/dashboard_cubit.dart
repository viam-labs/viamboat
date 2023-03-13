import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/broadcaster/boat_update_broadcaster.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class DashboardCubit extends ViamCubit<DashboardState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final SubscribeToBoatUpdateStreamUseCase _subscribeToBoatUpdateStreamUseCase;

  StreamSubscription<BoatUpdateEvent>? _boatUpdateStreamSubcription;

  DashboardCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
    this._subscribeToBoatUpdateStreamUseCase,
  ) : super(const DashboardState.idle());

  Future<void> init(String robotName) async {
    try {
      emit(const DashboardState.loading());

      await _listenToBoatUpdateStream();
      emit(DashboardState.loaded(robotName));
    } catch (error, st) {
      Fimber.e(
        'Error during init dashboard cubit',
        ex: error,
        stacktrace: st,
      );
      emit(const DashboardState.error());
    }
  }

  Future<void> _listenToBoatUpdateStream() async {
    await _boatUpdateStreamSubcription?.cancel();

    _boatUpdateStreamSubcription = _subscribeToBoatUpdateStreamUseCase().listen(_boatUpdateStreamListener);
  }

  Future<void> _boatUpdateStreamListener(BoatUpdateEvent _) async {
    try {
      final String boatName = await _getCurrentBoatName();

      emit(DashboardState.loaded(boatName));
    } catch (_) {
      //TODO: need to add error tracking
      emit(const DashboardState.error());
    }
  }

  Future<String> _getCurrentBoatName() async {
    final boats = await _getBoatsUseCase();
    final currentBoatId = _getCurrentBoatIdUseCase();

    return boats.firstWhere((boat) => boat.id == currentBoatId).name;
  }

  void onRefresh() {
    emit(const DashboardState.reloadApp());
    emit(const DashboardState.loading());
  }

  @override
  Future<void> close() {
    _boatUpdateStreamSubcription?.cancel();
    return super.close();
  }
}
