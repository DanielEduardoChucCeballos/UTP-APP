import 'package:flutter/material.dart';
import 'package:utpapp/constants.dart';
import 'package:utpapp/screens/home/banner.dart';
import 'package:utpapp/screens/home/bottom_navigation_bar.dart';
import 'package:utpapp/screens/home/datosEstadisticos.dart';

import 'package:utpapp/screens/home/search_field.dart';
import 'package:utpapp/size_confige.dart';
import '../../drawer.dart';
import 'appbar.dart';
import 'cards.dart';
import 'categories_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
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
              SizedBox(height: getRelativeHeight(0.005)),
              EventBanner(),
              SizedBox(height: getRelativeHeight(0.025)),
              CardsEvents(),
              SizedBox(height: getRelativeHeight(0.025)),
              DatosEstadisticos(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        centerIcon: Icons.place,
        itemIcons: [
          Icons.home,
          Icons.notifications,
          Icons.message,
          Icons.account_box,
        ],
      ),
    );
  }
}
