import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:utpapp/screens/cameraPage.dart';
import 'package:utpapp/screens/maestros.dart';
import 'package:utpapp/screens/maps.dart';
import 'package:utpapp/screens/pdf.dart';
import 'package:utpapp/screens/teacherPage.dart';

import 'home/homeScreen.dart';


class ButtonNavBar extends StatefulWidget {
  ButtonNavBar({Key? key}) : super(key: key);

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

int _page = 0;
List<Widget> _paginas = [
  //*Aqui vas agregando las paginas que quieres

  HomeScreen(),
  Horario(),
  TeachersPage()
];

class _ButtonNavBarState extends State<ButtonNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _paginas[_page],
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve:Curves.fastOutSlowIn,
        backgroundColor: Colors.white,
        color:   Color.fromARGB(255, 99, 203, 230),
        animationDuration: Duration(milliseconds: 300),
        
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(Icons.calendar_month, color: Colors.white),
          Icon(Icons.contacts, color: Colors.white),
        ],
      ),
    );
  }
}
