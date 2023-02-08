import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
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
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';

import 'add_boat_cubit_test.mocks.dart';

@GenerateMocks([
  AddNewBoatUseCase,
  CheckConnectionUseCase,
  SetCurrentBoatIdUseCase,
  GetCameraPermissionStatusUseCase,
  RequestCameraPermissionUseCase,
  LogAddBoatEventUseCase,
  GetBoatsUseCase,
  Uuid,
])
Future<void> main() async {
  late AddBoatCubit addBoatCubit;
  late AddNewBoatUseCase addNewBoatUseCase;
  late CheckConnectionUseCase checkConnectionUseCase;
  late SetCurrentBoatIdUseCase setCurrentBoatIdUseCase;
  late GetCameraPermissionStatusUseCase getCameraPermissionStatusUseCase;
  late RequestCameraPermissionUseCase requestCameraPermissionUseCase;
  late LogAddBoatEventUseCase logAddBoatEventUseCase;
  late GetBoatsUseCase getBoatsUseCase;
  late Uuid uuid;

  setUp(() {
    addNewBoatUseCase = MockAddNewBoatUseCase();
    checkConnectionUseCase = MockCheckConnectionUseCase();
    setCurrentBoatIdUseCase = MockSetCurrentBoatIdUseCase();
    getCameraPermissionStatusUseCase = MockGetCameraPermissionStatusUseCase();
    requestCameraPermissionUseCase = MockRequestCameraPermissionUseCase();
    logAddBoatEventUseCase = MockLogAddBoatEventUseCase();
    getBoatsUseCase = MockGetBoatsUseCase();
    uuid = MockUuid();
    addBoatCubit = AddBoatCubit(
      addNewBoatUseCase,
      checkConnectionUseCase,
      setCurrentBoatIdUseCase,
      getCameraPermissionStatusUseCase,
      requestCameraPermissionUseCase,
      logAddBoatEventUseCase,
      uuid,
      getBoatsUseCase,
    );
  });

  group('AddBoatCubit', () {
    const address = 'address';
    const id = 'id';
    const name = 'name';
    const secret = 'secret';
    const error = 'error';
    const permissionGrantedStatus = PermissionStatus.granted;
    const permissionDeniedStatus = PermissionStatus.denied;
    const takenName = 'boatName';
    const boats = [
      ViamBoat(
        id: 'boatId',
        name: 'boatName',
        address: 'boatAddress',
        secret: 'boatSecret',
      ),
    ];
    const viamErrorBoatNameTaken = ViamError.boatNameTaken;
    const viamErrorCameraPermissionDenied = ViamError.cameraPermissionDenied;

    test(
      'has initial loaded state',
      () => expect(
        addBoatCubit.state,
        const AddBoatState.loaded(canProceed: false),
      ),
    );

    group('init()', () {
      blocTest(
        'gets boats successfully',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.init(),
        setUp: () => when(getBoatsUseCase()).thenAnswer((_) async => boats),
        verify: (_) => verify(getBoatsUseCase()),
      );
    });

    group('verifyInputs()', () {
      blocTest(
        'emits loaded state with canProceed set to true when fields are not empty',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.verifyInputs(
          name,
          address,
          secret,
        ),
        expect: () => [
          const AddBoatState.loaded(canProceed: true),
        ],
      );

      blocTest(
        'emits loaded state with canProceed set to false when at least one of fields is empty',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.verifyInputs(
          '',
          address,
          '',
        ),
        expect: () => [
          const AddBoatState.loaded(canProceed: false),
        ],
      );
    });

    group('addNewBoat()', () {
      blocTest(
        'adds new boat and reloads app.',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.addNewBoat(
          name,
          address,
          secret,
        ),
        setUp: () => when(uuid.v4()).thenReturn(id),
        verify: (_) {
          verify(checkConnectionUseCase(address, secret));
          verify(addNewBoatUseCase(
            address: address,
            secret: secret,
            id: id,
            name: name,
          ));
          verify(setCurrentBoatIdUseCase(id));
        },
        expect: () => [
          const AddBoatState.loading(canProceed: false),
          const AddBoatState.reloadApp(),
        ],
      );

      blocTest(
        'emits error state when connection check fails',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.addNewBoat(
          name,
          address,
          secret,
        ),
        setUp: () => when(checkConnectionUseCase(address, secret)).thenAnswer(
          (_) => Future.error(error),
        ),
        verify: (_) => verify(checkConnectionUseCase(address, secret)),
        expect: () => [
          const AddBoatState.loading(canProceed: false),
          const AddBoatState.error(),
          const AddBoatState.loaded(canProceed: false),
        ],
      );

      blocTest(
        'emits error state when boat name is taken',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.addNewBoat(
          takenName,
          address,
          secret,
        ),
        setUp: () async {
          when(getBoatsUseCase()).thenAnswer((_) async => boats);
          await addBoatCubit.init();
        },
        expect: () => [
          const AddBoatState.loading(canProceed: false),
          const AddBoatState.error(viamErrorBoatNameTaken),
          const AddBoatState.loaded(canProceed: false),
        ],
      );
    });

    group('showConfirmationPopup()', () {
      blocTest(
        'shows ConfirmationPopup',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.showConfirmationPopup(),
        expect: () => [
          const AddBoatState.showConfirmationPopup(),
          const AddBoatState.loaded(canProceed: false),
        ],
      );
    });

    group('leavePage()', () {
      blocTest(
        'emits leavePage state',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.leavePage(),
        expect: () => [
          const AddBoatState.leavePage(),
        ],
      );
    });

    group('showErrorMessage()', () {
      blocTest(
        'shows error message',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.showErrorMessage(viamErrorBoatNameTaken),
        expect: () => [
          const AddBoatState.error(viamErrorBoatNameTaken),
          const AddBoatState.loaded(canProceed: false),
        ],
      );
    });

    group('scanQrCode()', () {
      blocTest(
        'checks camera permissions and navigates to scanQrPage when permissions granted',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.scanQrCode(),
        setUp: () => when(getCameraPermissionStatusUseCase()).thenAnswer(
          (_) async => permissionGrantedStatus,
        ),
        expect: () => [
          const AddBoatState.navigateToScanQrPage(),
        ],
      );

      blocTest(
        'requests camera permission and shows error message when not granted',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.scanQrCode(),
        setUp: () {
          when(getCameraPermissionStatusUseCase()).thenAnswer(
            (_) async => permissionDeniedStatus,
          );

          when(requestCameraPermissionUseCase()).thenAnswer(
            (_) async => permissionDeniedStatus,
          );
        },
        expect: () => [
          const AddBoatState.error(viamErrorCameraPermissionDenied),
          const AddBoatState.loaded(canProceed: false),
        ],
      );

      blocTest(
        'requests camera permission and navigates to scanQrPage when granted',
        build: () => addBoatCubit,
        act: (AddBoatCubit cubit) => cubit.scanQrCode(),
        setUp: () {
          when(getCameraPermissionStatusUseCase()).thenAnswer(
            (_) async => permissionDeniedStatus,
          );

          when(requestCameraPermissionUseCase()).thenAnswer(
            (_) async => permissionGrantedStatus,
          );
        },
        expect: () => [
          const AddBoatState.navigateToScanQrPage(),
        ],
      );
    });
  });
}
