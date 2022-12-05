import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/current_boat_service.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';

@injectable
class AddBoatCubit extends Cubit<AddBoatState> {
  final CurrentBoatService currentBoatService;

  AddBoatCubit(this.currentBoatService) : super(const AddBoatState.loaded());

  Future<void> setNewBoat() async {
    await currentBoatService.setCurrentBoat(
      name: 'Camera-main',
      address: 'camera-main.xl6oiexz3d.local.viam.cloud',
      payload: '2824dhqonsdzjw09tphtlh7cvu1woushvvl4cofca4mviabh',
    );
    emit(const AddBoatState.goToDashboard());
  }
}
