import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:viam_marine/domain/error/model/viam_error.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/scan_qr/cubit/scan_qr_cubit.dart';
import 'package:viam_marine/presentation/page/scan_qr/cubit/scan_qr_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';

class ScanQrPage extends StatefulWidget with AutoRouteWrapper, ExtensionMixin {
  final bool showWelcomeText;

  const ScanQrPage({
    required this.showWelcomeText,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<ScanQrCubit>(
        create: (_) => getIt<ScanQrCubit>(),
        lazy: false,
        child: this,
      );

  @override
  State<ScanQrPage> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
  final MobileScannerController _cameraController = MobileScannerController();

  @override
  void dispose() {
    super.dispose();

    _cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).scan_qr,
          leading: BackButton(
            color: context.getColors().darkBlue1,
            onPressed: () => _navigateBackToAddBoatPage(
              null,
              null,
              null,
            ),
          ),
        ),
        body: BlocListener<ScanQrCubit, ScanQrState>(
          listener: (context, state) => state.maybeWhen(
            error: () => _navigateBackToAddBoatPage(
              null,
              null,
              null,
              ViamError.scanQrError,
            ),
            qrScanned: _navigateBackToAddBoatPage,
            orElse: () => null,
          ),
          child: MobileScanner(
            allowDuplicates: false,
            controller: _cameraController,
            onDetect: _onQrDetected,
          ),
        ),
      );

  void _navigateBackToAddBoatPage(
    String? name,
    String? address,
    String? secret, [
    ViamError? error,
  ]) {
    if (widget.showWelcomeText) {
      AutoRouter.of(context).replaceAll([
        AddBoatRoute(
          showWelcomeText: widget.showWelcomeText,
          address: address,
          name: name,
          secret: secret,
          error: error,
        ),
      ]);
    } else {
      AutoRouter.of(context).replace(
        AddBoatRoute(
          showWelcomeText: widget.showWelcomeText,
          address: address,
          name: name,
          secret: secret,
          error: error,
        ),
      );
    }
  }

  void _onQrDetected(Barcode barcode, MobileScannerArguments? args) {
    final qrCode = barcode.rawValue;
    if (qrCode != null) {
      context.read<ScanQrCubit>().onQrCodeScanned(qrCode);
    } else {
      context.read<ScanQrCubit>().emitError();
    }
  }
}
