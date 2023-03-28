import 'package:freezed_annotation/freezed_annotation.dart';

part 'scan_qr_state.freezed.dart';

@freezed
class ScanQrState with _$ScanQrState {
  const factory ScanQrState.idle() = ScanQrStateIdle;

  const factory ScanQrState.qrScanned({
    required String name,
    required String address,
    required String secret,
  }) = ScanQrStateQrScanned;

  const factory ScanQrState.error() = ScanQrStateError;
}
