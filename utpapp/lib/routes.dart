import 'package:flutter/material.dart';
import 'package:utpapp/auth/loginPage.dart';
import 'package:utpapp/auth/registerPage.dart';


Map<String, WidgetBuilder> getRoute() {
  return <String, WidgetBuilder>{

    '/loginPage': (BuildContext context) => LoginPage(),
    '/registerPage': (BuildContext context) => RegisterPage(),


  };
}
