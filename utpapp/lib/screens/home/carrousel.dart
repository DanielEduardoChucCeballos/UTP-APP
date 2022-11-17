import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class CarrouselEvents extends StatelessWidget {
  final List<String> listImages = [
    'assets/images/BANNER MANEJO DE LA INFORMACIÓN.jpg',
    'assets/images/BECA JEF 2022_2.jpg',
    'assets/images/C_LABORATORIOS.jpg',
    'assets/images/MOVILIDAD SIIES 2023_2.jpg',
  ];
  CarrouselEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        CarouselImages(
          scaleFactor: 0.7,
          listImages: listImages,
          height: 130.0,
          borderRadius: 30.0,
          cachedNetworkImage: true,
          verticalAlignment: Alignment.bottomCenter,
          onTap: (index) {
            print('Tapped on page $index');
          },
        )
      ],
    );
  }
}
