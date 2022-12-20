import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';

@injectable
class AddBoatCubit extends Cubit<AddBoatState> {
  final BoatService boatService;
  final ResourceService resourceService;
  bool _canProceed = false;

  AddBoatCubit(
    this.boatService,
    this.resourceService,
  ) : super(const AddBoatState.loaded(canProceed: false));

  void verifyInputs(
    String boatName,
    String address,
    String secret,
  ) {
    _canProceed = boatName.trim().isNotEmpty && address.trim().isNotEmpty && secret.trim().isNotEmpty;
    emit(AddBoatState.loaded(canProceed: _canProceed));
  }

  Future<void> addNewBoat(
    String name,
    String address,
    String secret,
  ) async {
    try {
      emit(AddBoatState.loading(canProceed: _canProceed));

      await boatService.checkConnection(address, secret);

      final id = const Uuid().v4();
      await boatService.addNewBoat(
        id: id,
        name: name,
        address: address,
        secret: secret,
      );

      await boatService.setCurrentBoatId(id);
      emit(const AddBoatState.reloadApp());
    } catch (_) {
      emit(const AddBoatState.error());
      emit(AddBoatState.loaded(canProceed: _canProceed));
    }
  }

  void showConfirmationPopup() {
    emit(const AddBoatState.showConfirmationPopup());
    emit(AddBoatState.loaded(canProceed: _canProceed));
  }

  void leavePage() => emit(const AddBoatState.leavePage());
}
