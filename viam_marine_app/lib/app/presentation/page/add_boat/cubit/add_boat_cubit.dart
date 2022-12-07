import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/current_boat_service.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';

@injectable
class AddBoatCubit extends Cubit<AddBoatState> {
  final CurrentBoatService currentBoatService;
  final ResourceService resourceService;
  bool _canProceed = false;

  AddBoatCubit(
    this.currentBoatService,
    this.resourceService,
  ) : super(const AddBoatState.loaded(canProceed: false));

  void verifyInputs(String boatName, String address, String secret) {
    _canProceed = boatName.isNotEmpty && address.isNotEmpty && secret.isNotEmpty;
    emit(AddBoatState.loaded(canProceed: _canProceed));
  }

  Future<void> setNewBoat(String name, String address, String secret) async {
    try {
      emit(const AddBoatState.loading());
      await currentBoatService.setCurrentBoat(
        name: name,
        address: address,
        payload: secret,
      );
      emit(const AddBoatState.goToDashboard());
    } catch (err) {
      print(err);
    }
  }
}
