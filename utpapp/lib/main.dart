import 'package:flutter/material.dart';
import 'package:utpapp/auth/loginPage.dart';
import 'package:utpapp/routes.dart';
import 'package:utpapp/screens/button_nav_bar.dart';
import 'package:utpapp/screens/home/homeScreen.dart';
import 'package:utpapp/size_confige.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:splash_view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: getRoute(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(builder: (context) {
        SizeConfig.initSize(context);
        return SplashView(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 97, 211, 101),
                Color.fromRGBO(88, 211, 241, 1)
              ]),
          logo: Image.asset('assets/images/logo.png'),
          done: Done(ButtonNavBar()),
        );
      }),
    );
  }
}
