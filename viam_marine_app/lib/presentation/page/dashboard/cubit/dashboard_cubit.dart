// ignore_for_file: unused_field

import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/broadcaster/boat_update_broadcaster.dart';
import 'package:viam_marine/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/subscribe_to_boat_update_stream_use_case.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

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

  @override
  Future<void> close() {
    _boatUpdateStreamSubcription?.cancel();
    return super.close();
  }
}
