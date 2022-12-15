/* import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../drawer.dart';
import '../../../models/Alumno.dart';
import '../../../size_confige.dart';
import '../../home/appbar.dart';

class Moments extends StatefulWidget {
  const Moments({Key? key}) : super(key: key);

  @override
  State<Moments> createState() => _MomentsState();
}

class _MomentsState extends State<Moments> {
  List<Alumno> calificaciones = <Alumno>[];

  Future<List<Alumno>> getCalificaciones() async {
    var url = "http://192.168.1.64/conn.php";

    var response =
        await http.post(Uri.parse(url)).timeout(Duration(seconds: 90));

    var datos = json.decode(response.body);

    var registros = <Alumno>[];
    

    for (datos in datos) {
      registros.add(Alumno.fromJson(datos));
    }
    return registros;
  }

  @override
  void initState() {
    super.initState();
    getCalificaciones().then((value) {
      setState(() {
        calificaciones.addAll(value);
      });
    });
  }

  final idalumno = TextEditingController();

  final idgrupo = TextEditingController();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Parcial 1"), value: "Parcial 1"),
      DropdownMenuItem(child: Text("Parcial 2"), value: "Parcial 2"),
      DropdownMenuItem(child: Text("Parcial 3"), value: "Parcial 3"),
    ];
    return menuItems;
  }

  String selectedValue = "Parcial 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      body: Column(
        children: [
          Flexible(
            
            child: Container(
                  padding: const EdgeInsets.all(10),
              child: Column(
                
                children: [
                  SizedBox(height: getRelativeHeight(0.025)),
                  UTPAppBar(
                    key: null,
                  ),
                  Text(
                    'Información del alumno',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: idalumno,
                    decoration: const InputDecoration(
                        labelText: "Alumno id",
                        border:
                            OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                        ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: idgrupo,
                    decoration: const InputDecoration(
                        labelText: "Grupo id",
                        border:
                            OutlineInputBorder() /* (borderRadius: BorderRadius.all(Radius.circular(20))) */
                        ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DropdownButton(
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Solocitar información",
                                style: TextStyle(fontSize: 17)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              
              ),
            ),
          ),
         
          Flexible(
            child: ListView.builder(
                itemCount: calificaciones.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                calificaciones[index].nomalumno,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          Text(
                            calificaciones[index].nomgrupo,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(calificaciones[index].nomasignatura),
                          Text('Parcial: ' + calificaciones[index].momento),
                          Text('Calificacion: ' +
                              calificaciones[index].calificacion),
                          Text('Calificacion base 10: ' +
                              calificaciones[index].calificacion_base),
                          Text('Asistencia : ' +
                              calificaciones[index].asistencia),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
 */