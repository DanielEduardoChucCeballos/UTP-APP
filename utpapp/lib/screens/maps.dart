/* 
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);
// route de mi navegation 

  @override
  State<Maps> createState() => _ConocenosState();
}

class _ConocenosState extends State<Maps> {
  GoogleMapController? _controller;

  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('gooogle'),
          leading: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              final CameraPosition cameraPosition = const CameraPosition(
                target: LatLng(20.578716280720275, -90.00771737855695),
                zoom: 15.5,
              );
              _controller?.animateCamera(
                  CameraUpdate.newCameraPosition(cameraPosition));
            },
          ),
          backgroundColor: Color.fromARGB(255, 13, 36, 80),
        ),
       
        body: GoogleMap(
          onMapCreated: (controller) {
            _controller = controller;
          },
          initialCameraPosition: const CameraPosition(
            target: LatLng(37.42796133580664, -122.085749655962),
            zoom: 10.0,
          ),
        ));
  }
} */

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Maps extends StatefulWidget {
  Maps({
    Key? key,
  }) : super(key: key);

  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<Maps> {
  late PdfViewerController _pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewerStateKey = GlobalKey();
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SfPdfViewer.network(
          'http://www.utponiente.edu.mx/utp/doctos/CALENDARIO%20ESCOLAR%20UTP%202022-2023_AUTORIZADO_FIRMAS.pdf',
          controller: _pdfViewerController,
          key: _pdfViewerStateKey),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                _pdfViewerStateKey.currentState!.openBookmarkView();
              },
              icon: Icon(
                Icons.bookmark,
                color: Color.fromARGB(255, 163, 123, 123),
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.jumpToPage(2);
              },
              icon: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 2.25;
              },
              icon: Icon(
                Icons.zoom_in,
                color: Colors.white,
              ))
        ],
      ),
    ));
  }
}
