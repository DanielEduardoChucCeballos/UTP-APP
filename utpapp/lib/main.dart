import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:utpapp/routes.dart';

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
        /*  textTheme: Theme.of(context).textTheme.apply(bodyColor: Color.fromARGB(255, 1, 58, 90)), */
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/loginPage',
    );
  }
}
