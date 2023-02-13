import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class DashboardCubit extends ViamCubit<DashboardState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;

  DashboardCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      emit(const DashboardState.loading());

      final boatName = await _getCurrentBoatName();

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
}
