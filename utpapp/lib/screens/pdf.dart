import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';



/// Represents Homepage for Navigation
class Horario extends StatefulWidget {
  @override
  _Horario createState() => _Horario();
}

class _Horario extends State<Horario> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horario'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'http://www.utponiente.edu.mx/utp/doctos/CALENDARIO%20ESCOLAR%20UTP%202022-2023_AUTORIZADO_FIRMAS.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}