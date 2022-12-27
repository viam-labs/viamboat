import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/presentation/page/scan_qr/cubit/scan_qr_cubit.dart';
import 'package:viam_marine/app/presentation/page/scan_qr/cubit/scan_qr_state.dart';

void main() {
  late ScanQrCubit scanQrCubit;

  setUp(() {
    scanQrCubit = ScanQrCubit();
  });

  group('ScanQr cubit', () {
    test(
      'has initial idle state',
      () => expect(scanQrCubit.state, const ScanQrState.idle()),
    );

    group('onQrCodeScanned', () {
      const correctRawQrCode = '{"name": "name","address": "address","secret":"secret"}';

      const incorrectRawQrCode = 'incorrectRawQrCode';

      blocTest(
        'emits qrScanned state when successful',
        build: () => scanQrCubit,
        act: (ScanQrCubit cubit) => cubit.onQrCodeScanned(correctRawQrCode),
        expect: () => [
          const ScanQrState.qrScanned(
            name: 'name',
            address: 'address',
            secret: 'secret',
          ),
        ],
      );

      blocTest(
        'emits error state when failure',
        build: () => scanQrCubit,
        act: (ScanQrCubit cubit) => cubit.onQrCodeScanned(incorrectRawQrCode),
        expect: () => [
          const ScanQrState.error(),
        ],
      );
    });
  });
}
