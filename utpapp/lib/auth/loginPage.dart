import 'package:flutter/material.dart';
import 'package:utpapp/auth/registerPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:utpapp/routes.dart';

import 'dart:async';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idalumno = TextEditingController();
  TextEditingController matriculainput = TextEditingController();

  String alumno = "";
  String matricula = "";
  late SharedPreferences prefs;

  void ingresar(alumno, matricula) async {
    try {
      var url = 'http://192.168.1.64/login.php';
      var response = await http.post(Uri.parse(url), body: {
        'idalumno': alumno,
        'matricula': matricula,
      }).timeout(const Duration(seconds: 90));

      if (response.body == 'true') {
        Navigator.pushNamed(
          context,
          '/navigator',
        );
        FocusScope.of(context).unfocus();

        print('Response body: ${response.body}');
        prefs = await SharedPreferences.getInstance();
        prefs.setString("idalumno", alumno);
        prefs.setString("matricula", matricula);
        

      } else {
        print("Usuario incorrecto");
        print('Response body: ${response.body}');
      }
    } on TimeoutException catch (e) {
      print('Se agotó el tiempo de conexión');
    } on Error catch (e) {
      print('Http error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.cyan[800]!,
              ],
            ),
          ),
          child: CircleAvatar(
            child: Image.asset('assets/images/arco.png',width: 300,),
            radius: 100,
            backgroundColor: Colors.transparent,

          ),
        ),
        Transform.translate(
          offset: Offset(0, -40),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 260, bottom: 20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: idalumno,
                        decoration:
                            InputDecoration(labelText: "ID de usuario:"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: matriculainput,
                        decoration: InputDecoration(labelText: "Matricula:"),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () => _login(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Iniciar Sesión"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void _login(BuildContext context) {
    alumno = idalumno.text;
    matricula = matriculainput.text;
   

    if (alumno != '' && matricula != '') {
      ingresar(alumno, matricula);
    }
/*     Navigator.pushNamed(context, 'navigator',); */
  }
}
