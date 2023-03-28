import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/usecase/change_boat_name_use_case.dart';
import 'package:viam_marine/domain/boat/usecase/notify_boat_name_update_use_case.dart';
import 'package:viam_marine/extensions/list_extension.dart';
import 'package:viam_marine/presentation/page/change_boat_name/cubit/change_boat_name_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class ChangeBoatNameCubit extends ViamCubit<ChangeBoatNameState> {
  final ChangeBoatNameUseCase _changeBoatNameUseCase;
  final NotifyBoatNameUpdateUseCase _notifyBoatNameUpdateUseCase;

  late final List<ViamBoat> _boats;
  late final String? _currentBoatId;

  // ignore: unused_field
  ViamBoat? _currentBoat;
  bool _isButtonActive = false;

  ChangeBoatNameCubit(
    this._changeBoatNameUseCase,
    this._notifyBoatNameUpdateUseCase,
  ) : super(const ChangeBoatNameState.idle());

  void init(List<ViamBoat> boats, String? currentBoatId) {
    _boats = boats;
    _currentBoatId = currentBoatId;

    _currentBoat = _boats.firstWhere((boat) => boat.id == _currentBoatId);

    emit(ChangeBoatNameState.loaded('', _isButtonActive));
  }

  void verifyInput(String newBoatName) {
    _isButtonActive = newBoatName.trim().isNotEmpty && newBoatName.length < 21;

    emit(ChangeBoatNameState.loaded('', _isButtonActive));
  }

  Future<void> updateBoatName(String newBoatName) async {
    emit(ChangeBoatNameState.loading('', _isButtonActive));
    if (!_boats.containsBoatName(newBoatName)) {
      if (_currentBoatId != null) {
        await _changeBoatNameUseCase(id: _currentBoatId!, name: newBoatName);
        _notifyBoatNameUpdateUseCase();
        emit(const ChangeBoatNameState.success());
      }
    } else {
      emit(const ChangeBoatNameState.error());
      emit(ChangeBoatNameState.loaded('', _isButtonActive));
    }
  }
}
