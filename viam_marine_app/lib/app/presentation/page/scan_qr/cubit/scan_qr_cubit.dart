import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/scan_qr/cubit/scan_qr_state.dart';

const nameKey = 'name';
const addressKey = 'address';
const secretKey = 'secret';

@injectable
class ScanQrCubit extends Cubit<ScanQrState> {
  ScanQrCubit() : super(const ScanQrState.idle());

  void onQrCodeScanned(String qrCode) {
    try {
      final Map<String, dynamic> decodedQr = jsonDecode(qrCode);

      emit(ScanQrState.qrScanned(
        name: decodedQr[nameKey].toString(),
        address: decodedQr[addressKey].toString(),
        secret: decodedQr[secretKey].toString(),
      ));
    } catch (_) {
      emitError();
    }
  }

  void emitError() => emit(const ScanQrState.error());
}
