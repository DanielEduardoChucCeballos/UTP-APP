import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:utpapp/auth/loginPage.dart';
import 'package:utpapp/screens/MainScreen.dart';
import 'package:utpapp/screens/aboutus.dart';
import 'package:utpapp/screens/button_nav_bar.dart';
import 'package:utpapp/screens/cameraPage.dart';
import 'package:utpapp/screens/home/HomeScreen.dart';
import 'package:utpapp/screens/homePage.dart';
import 'package:utpapp/screens/maps.dart';
import 'package:utpapp/screens/pdf.dart';
import 'package:utpapp/screens/profileMenu.dart';
import 'package:utpapp/screens/scanner.dart';
import 'package:utpapp/screens/teacherPage.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

final user = FirebaseAuth.instance.currentUser;

final name = user?.displayName;
final email = user?.email;
// final photoUrl = user?.photoURL;
// final emailVerified = user?.emailVerified;
// final uid = user?.uid;

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(88, 211, 241, 1),
                ),
                accountName: Text(name!),
                accountEmail: Text(email!),
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),
              ),
              ProfileMenu(
                text: "Inicio",
                icon: "assets/icons/home.svg",
                press: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ButtonNavBar()),
                  )
                },
              ),
              ProfileMenu(
                text: "Mi Perfil",
                icon: "assets/icons/UserIcon.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Conócenos",
                icon: "assets/icons/Call.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Modelo educativo",
                icon: "assets/icons/agenda-education-svgrepo-com.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Eventos",
                icon: "assets/icons/Bell.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Comunidad estudiantil",
                icon: "assets/icons/share-svgrepo-com.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Maestros UTP",
                icon: "assets/icons/teacher-svgrepo-com.svg",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TeachersPage()),
                  );
                },
              ),
               ProfileMenu(
                text: "APIS",
                icon: "assets/icons/teacher-svgrepo-com.svg",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  HomePage()),
                  );
                },
              ),
              ProfileMenu(
                text: "Cerrar Sesión",
                icon: "assets/icons/Logout.svg",
                press: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          )),
    );
  }
}
