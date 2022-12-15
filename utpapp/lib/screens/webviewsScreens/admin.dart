import 'package:flutter/material.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class Administracion extends StatefulWidget {
  @override
  AdministracionState createState() => AdministracionState();
}

class AdministracionState extends State<Administracion> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'http://www.utponiente.edu.mx/utpold/adm.php',
    );
  }
}
