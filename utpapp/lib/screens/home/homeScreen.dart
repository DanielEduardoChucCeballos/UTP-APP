import 'package:flutter/material.dart';
import 'package:utpapp/constants.dart';
import 'package:utpapp/screens/button_nav_bar.dart';
import 'package:utpapp/screens/home/banner.dart';
import 'package:utpapp/screens/home/carrousel.dart';
import 'package:utpapp/screens/home/datosEstadisticos.dart';

import 'package:utpapp/screens/home/search_field.dart';
import 'package:utpapp/screens/home/video.dart';
import 'package:utpapp/size_confige.dart';
import '../../drawer.dart';
import 'appbar.dart';
import 'cards.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getRelativeHeight(0.025)),
              UTPAppBar(
                key: null,
              ),

              SizedBox(height: getRelativeHeight(0.015)),
              SearchField(),
              CarrouselEvents(),
              // EventBanner(),
              // SizedBox(height: getRelativeHeight(0.025)),

              SizedBox(height: getRelativeHeight(0.005)),

              CardsEvents(),
              SizedBox(height: getRelativeHeight(0.025)),
              SizedBox(height: getRelativeHeight(0.005)),
              VideoUtp(),
              DatosEstadisticos(),
            ],
          ),
        ),
      ),
    );
  }
}
