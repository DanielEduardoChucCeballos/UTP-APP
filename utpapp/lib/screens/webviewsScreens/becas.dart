import 'package:flutter/material.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class Becas extends StatefulWidget {
  @override
  BecasState createState() => BecasState();
}

class BecasState extends State<Becas> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://controlescolarutp.wixsite.com/utp-yucatan/becas',
    );
  }
}
