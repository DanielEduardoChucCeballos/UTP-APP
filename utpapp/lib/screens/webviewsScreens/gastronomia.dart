import 'package:flutter/material.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class Gastronomia extends StatefulWidget {
  @override
  GastronomiaState createState() => GastronomiaState();
}

class GastronomiaState extends State<Gastronomia> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'http://www.utponiente.edu.mx/utpold/gas.php',
    );
  }
}
