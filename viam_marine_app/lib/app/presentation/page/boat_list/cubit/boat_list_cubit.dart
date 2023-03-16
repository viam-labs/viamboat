import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class BoatListCubit extends ViamCubit<BoatListState> {
  final GetBoatsUseCase _getBoatsUseCase;
  final GetCurrentBoatIdUseCase _getCurrentBoatIdUseCase;
  final SetCurrentBoatIdUseCase _setCurrentBoatIdUseCase;

  late String? _currentBoatId;
  List<ViamBoat> _boats = [];

  BoatListCubit(
    this._getBoatsUseCase,
    this._getCurrentBoatIdUseCase,
    this._setCurrentBoatIdUseCase,
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
}
