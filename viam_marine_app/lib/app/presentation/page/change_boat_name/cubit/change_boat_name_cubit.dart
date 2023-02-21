import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/change_boat_name_use_case.dart';
import 'package:viam_marine/app/extensions/list_extension.dart';
import 'package:viam_marine/app/presentation/page/change_boat_name/cubit/change_boat_name_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class ChangeBoatNameCubit extends ViamCubit<ChangeBoatNameState> {
  final ChangeBoatNameUseCase _changeBoatNameUseCase;

  late final List<ViamBoat> _boats;
  late final String? _currentBoatId;

  ViamBoat? _currentBoat;
  bool _isButtonActive = false;

  ChangeBoatNameCubit(this._changeBoatNameUseCase) : super(const ChangeBoatNameState.idle());

  void init(List<ViamBoat> boats, String? currentBoatId) {
    _boats = boats;
    _currentBoatId = currentBoatId;

    _currentBoat = _boats.firstWhere((boat) => boat.id == _currentBoatId);

    emit(ChangeBoatNameState.loaded(_currentBoat?.name ?? '', _isButtonActive));
  }

  void verifyInput(String newBoatName) {
    _isButtonActive =
        newBoatName.trim().isNotEmpty && newBoatName.length < 21 && newBoatName.trim() != _currentBoat?.name.trim();

    emit(ChangeBoatNameState.loaded(_currentBoat?.name ?? '', _isButtonActive));
  }

  Future<void> updateBoatName(String newBoatName) async {
    emit(ChangeBoatNameState.loading(_currentBoat?.name ?? '', _isButtonActive));
    if (!_boats.containsBoatName(newBoatName)) {
      if (_currentBoatId != null) {
        await _changeBoatNameUseCase(id: _currentBoatId!, name: newBoatName);
        emit(const ChangeBoatNameState.success());
      }
    } else {
      emit(const ChangeBoatNameState.error());
      emit(ChangeBoatNameState.loaded(_currentBoat?.name ?? '', _isButtonActive));
    }
  }
}
