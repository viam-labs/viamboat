import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';

class ScanQrPage extends StatefulWidget {
  const ScanQrPage({super.key});

  @override
  State<ScanQrPage> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
  final MobileScannerController _cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Scan QR'),
          centerTitle: true,
        ),
        body: MobileScanner(
          allowDuplicates: false,
          controller: _cameraController,
          onDetect: _onQrDetected,
        ),
      );

  void _onQrDetected(Barcode barcode, MobileScannerArguments? args) {
    final qrCode = barcode.rawValue;
    if (qrCode != null) {
      final Map<String, dynamic> qrJson = jsonDecode(qrCode);
      final String name = qrJson['name'].toString();
      final String address = qrJson['address'].toString();
      final String secret = qrJson['secret'].toString();

      AutoRouter.of(context).replace(
        AddBoatRoute(showWelcomeText: true, name: name, address: address, secret: secret),
      );
    }
  }
}
