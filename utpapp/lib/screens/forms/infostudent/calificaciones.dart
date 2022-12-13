import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:utpapp/drawer.dart';
import 'package:flutter/services.dart';
import '../../../size_confige.dart';
import '../../home/appbar.dart';

class Calificaciones extends StatefulWidget {
  const Calificaciones({super.key});

  @override
  State<Calificaciones> createState() => _CalificacionesState();
}

class _CalificacionesState extends State<Calificaciones> {
  final idalumno = TextEditingController();
  final idgrupo = TextEditingController();

  late int alumno;
  late int grupo;

  late int momento = 1;
  var items = [1, 2, 3];

  void solicitar(alumno, grupo, momento) async {
    try {
      var url = 'http://192.168.1.64/config.php';
      var response = await http.post(Uri.parse(url), body: {
        'idalumno': alumno,
        'idgrupo': grupo,
        'momento': momento,
      }).timeout(const Duration(seconds: 90));

      if (response.statusCode == 200) {
        

        FocusScope.of(context).unfocus();
        print('Response body: ${response.body}');
      } else {
        print("Error por alguna reazón XD");
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
      drawer: MenuDrawer(),
      body: ListView(
        children: [
          SizedBox(height: getRelativeHeight(0.025)),
          UTPAppBar(
            key: null,
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.all(20.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextField(
                            controller: idalumno,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'ID del alumno',
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: idgrupo,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              labelText: 'ID del grupo',
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: DropdownButton(
                              value: momento,
                              items: items.map((int items) {
                                return DropdownMenuItem(
                                    value: items,
                                    child: Text(items.toString()));
                              }).toList(),
                              onChanged: (int? newValue) {
                                setState(() {
                                  momento = newValue!;
                                });
                              },
                            ),
                          ),
                          TextButton(
                              onPressed: () => _queryCalif(context),
                              child: Text("Solicitar"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _queryCalif(BuildContext context) {
    alumno = int.parse(idalumno.text);
    grupo = int.parse(idgrupo.text);
    momento = momento;

    print(alumno.runtimeType);
    print(grupo.runtimeType);
    print(momento.runtimeType);


    if (alumno != '' && grupo != '' && momento != '') {
      solicitar(alumno, grupo, momento);
    }
/*     Navigator.pushNamed(context, 'navigator',); */
  }
}
