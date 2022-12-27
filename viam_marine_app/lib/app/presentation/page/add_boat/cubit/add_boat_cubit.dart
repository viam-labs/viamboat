import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/permissions/service/permissions_service.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';

@injectable
class AddBoatCubit extends Cubit<AddBoatState> {
  final BoatService boatService;
  final ResourceService resourceService;
  final PermissionsService permissionsService;
  bool _canProceed = false;

  AddBoatCubit(
    this.boatService,
    this.resourceService,
    this.permissionsService,
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

  Future<void> scanQrCode() async {
    await _handlePermissions();
  }

  Future<void> _handlePermissions() async {
    final PermissionStatus cameraPermsisionStatus = await permissionsService.getCameraPermissionStatus();

    switch (cameraPermsisionStatus) {
      case PermissionStatus.denied:
        await _askForCameraPermissions();
        break;
      case PermissionStatus.granted:
        _navigateToScanQrPage();
        break;
      default:
        showErrorMsg(
          Strings.current.scan_qr_camera_permissions_denied_msg,
        );
        break;
    }
  }

  Future<void> _askForCameraPermissions() async {
    final PermissionStatus newStatus = await permissionsService.requestCameraPermission();

    if (newStatus == PermissionStatus.granted) {
      _navigateToScanQrPage();
    } else {
      showErrorMsg(
        Strings.current.scan_qr_camera_permissions_denied_msg,
      );
    }
  }

  void _navigateToScanQrPage() => emit(const AddBoatState.navigateToScanQrPage());

  void showErrorMsg(String msg) {
    emit(AddBoatState.error(msg));
    emit(AddBoatState.loaded(canProceed: _canProceed));
  }
}
