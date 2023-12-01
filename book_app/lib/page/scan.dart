/// 스캔 페이지
///

import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';

/// qr_code_dart_scan
/// https://pub.dev/packages/qr_code_dart_scan
///

class ScanPageWidget extends StatelessWidget {
  ScanPageWidget({required this.setScanCode, super.key});

  Function? setScanCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR스캔')),
      body: QRCodeDartScanView(
        typeScan: TypeScan.live,
        resolutionPreset: QRCodeDartScanResolutionPreset.medium,
        scanInvertedQRCode: true,
        controller: QRCodeDartScanController(),
        formats: const [
          BarcodeFormat.QR_CODE,
        ],
        onCapture: (Result result) {
          print(result.text);
          setScanCode!(result.text);
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
