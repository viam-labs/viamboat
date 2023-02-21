import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/presentation/page/change_boat_name/cubit/change_boat_name_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class ChangeBoatNameCubit extends ViamCubit<ChangeBoatNameState> {
  late final List<ViamBoat> boats;
  late final String? currentBoatId;

  ViamBoat? currentBoat;

  ChangeBoatNameCubit() : super(const ChangeBoatNameState.idle());

  void init(List<ViamBoat> boats, String? currentBoatId) {
    this.boats = boats;
    this.currentBoatId = currentBoatId;

    currentBoat = boats.firstWhere((boat) => boat.id == currentBoatId);

    emit(ChangeBoatNameState.loaded(currentBoat?.name ?? '', false));
  }
}
