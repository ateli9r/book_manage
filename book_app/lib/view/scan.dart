import 'package:flutter/material.dart';
import 'package:qr_code_dart_scan/qr_code_dart_scan.dart';
import 'package:audioplayers/audioplayers.dart';

/// qr_code_dart_scan
/// https://pub.dev/packages/qr_code_dart_scan
///
/// audioplayers
/// https://pub.dev/packages/audioplayers

class ScanPageWidget extends StatelessWidget {
  ScanPageWidget({
    required this.setScanCode,
    super.key,
  });

  final Function? setScanCode;
  final AudioPlayer player = AudioPlayer();
  final AssetSource? beepSound = AssetSource('store-scanner-beep-90395.mp3');

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
          player.play(beepSound!).then((_) {
            setScanCode!(result.text);
            Navigator.of(context).pop();
          });
        },
      ),
    );
  }
}
