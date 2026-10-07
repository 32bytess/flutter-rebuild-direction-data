// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
import 'dart:async';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    controller = fixtureController;
    result = fixtureResult;
    qrKey = fixtureQrKey;
  }

  late Barcode? result;

  late QRViewController? controller;

  late GlobalKey qrKey;

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea =
        (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 400.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Color(0xFF1960A5),
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
      onPermissionSet: (ctrl, p) {
        /* spm: non-rebuild body erased */
      },
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: IconButton(
                  style: const ButtonStyle(
                    iconSize: WidgetStatePropertyAll(30),
                  ),
                  icon: const Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: IconButton(
                  style: const ButtonStyle(
                    iconSize: WidgetStatePropertyAll(30),
                  ),
                  icon: const Icon(Icons.flash_on),
                  onPressed: () async {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: IconButton(
                  style: const ButtonStyle(
                    iconSize: WidgetStatePropertyAll(30),
                  ),
                  icon: const Icon(Icons.cameraswitch),
                  onPressed: () async {
                    /* spm: non-rebuild body erased */
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}













// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
