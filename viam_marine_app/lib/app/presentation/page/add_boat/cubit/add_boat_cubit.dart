import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';
import 'package:viam_marine/app/domain/analytics/usecase/log_add_boat_event_use_case.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/usecase/add_new_boat_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/check_connection_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/set_current_boat_id_use_case.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/domain/permissions/usecase/get_camera_permission_status_use_case.dart';
import 'package:viam_marine/app/domain/permissions/usecase/request_camera_permission_use_case.dart';
import 'package:viam_marine/app/domain/viam/usecase/authenticate_use_case.dart';
import 'package:viam_marine/app/extensions/list_extension.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';

@injectable
class AddBoatCubit extends Cubit<AddBoatState> {
  final AddNewBoatUseCase _addNewBoatUseCase;
  final CheckConnectionUseCase _checkConnectionUseCase;
  final SetCurrentBoatIdUseCase _setCurrentBoatIdUseCase;
  final GetCameraPermissionStatusUseCase _getCameraPermissionStatusUseCase;
  final RequestCameraPermissionUseCase _requestCameraPermissionUseCase;
  final LogAddBoatEventUseCase _logAddBoatEventUseCase;
  final GetBoatsUseCase _getBoatsUseCase;
  final Uuid _uuid;
  final AuthenticateUseCase _authenticateUseCase;

  bool _canProceed = false;
  List<ViamBoat> _boats = [];

  AddBoatCubit(
    this._addNewBoatUseCase,
    this._checkConnectionUseCase,
    this._setCurrentBoatIdUseCase,
    this._getCameraPermissionStatusUseCase,
    this._requestCameraPermissionUseCase,
    this._logAddBoatEventUseCase,
    this._uuid,
    this._getBoatsUseCase,
    this._authenticateUseCase,
  ) : super(const AddBoatState.loaded(canProceed: true));

  Future<void> init() async {
    _boats = await _getBoatsUseCase();
  }

  void verifyInputs(
    String boatName,
    String address,
    String secret,
  ) {
    _canProceed = true;
    emit(AddBoatState.loaded(canProceed: _canProceed));
  }

  Future<void> addNewBoat(
    String name,
    String address,
    String secret,
  ) async {
    try {
      emit(AddBoatState.loading(canProceed: _canProceed));

      if (!_boats.containsBoatName(name)) {
        await _checkConnectionUseCase(address, secret);

        final id = _uuid.v4();
        await _addNewBoatUseCase(
          id: id,
          name: name,
          address: address,
          secret: secret,
        );

        unawaited(_logAddBoatEventUseCase(
          id: id,
          name: name,
          address: address,
        ));

        await _setCurrentBoatIdUseCase(id);
        emit(const AddBoatState.reloadApp());
      } else {
        showErrorMessage(ViamError.boatNameTaken);
      }
    } catch (error, st) {
      Fimber.e(
        'Error during adding new boat',
        ex: error,
        stacktrace: st,
      );
      showErrorMessage();
    }
  }

  Future<void> auth() async {
    try {
      emit(AddBoatState.loading(canProceed: _canProceed));

      await _authenticateUseCase(
        authDomain: 'auth.viam.com',
        clientId: 'JSKrM2T8HrdIy2WMGEg9oluEyYemdY8T',
        audience: 'https://app.viam.com/',
        scheme: 'https',
      );

      emit(const AddBoatState.navigateToOrganizationsPage());
    } catch (_) {
      showErrorMessage();
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
    final PermissionStatus cameraPermsisionStatus = await _getCameraPermissionStatusUseCase();

    switch (cameraPermsisionStatus) {
      case PermissionStatus.denied:
        await _askForCameraPermissions();
        break;
      case PermissionStatus.granted:
        _navigateToScanQrPage();
        break;
      default:
        showErrorMessage(ViamError.cameraPermissionDenied);
        break;
    }
  }

  Future<void> _askForCameraPermissions() async {
    final PermissionStatus newStatus = await _requestCameraPermissionUseCase();

    if (newStatus == PermissionStatus.granted) {
      _navigateToScanQrPage();
    } else {
      showErrorMessage(ViamError.cameraPermissionDenied);
    }
  }

  void _navigateToScanQrPage() => emit(const AddBoatState.navigateToScanQrPage());

  void showErrorMessage([ViamError? error]) {
    emit(AddBoatState.error(error));
    emit(AddBoatState.loaded(canProceed: _canProceed));
  }
}
