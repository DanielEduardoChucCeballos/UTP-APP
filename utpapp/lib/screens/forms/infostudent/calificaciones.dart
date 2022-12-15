import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utpapp/drawer.dart';
import 'package:flutter/services.dart';
import 'package:utpapp/models/Alumno.dart';
import 'package:utpapp/models/Promedio.dart';
import '../../../size_confige.dart';
import '../../home/appbar.dart';
import 'formularioCalificacion.dart';

class Calificaciones extends StatefulWidget {
  const Calificaciones({
    super.key,
  });

  @override
  State<Calificaciones> createState() => _CalificacionesState();
}

class _CalificacionesState extends State<Calificaciones> {
  List<Alumno> alumnoList = <Alumno>[];
  List<Promedio> promedioList = <Promedio>[];

  Future<List<Alumno>> getAlumno() async {
    late SharedPreferences prefs;

    prefs = await SharedPreferences.getInstance();
    final String? idalumno = prefs.getString('idalumno');
    final String? idgrupo = prefs.getString('idgrupo');
    final String? momento = prefs.getString('momento');

    //var url = 'http://utpproyectos.com.mx/swcalificaciones/chuc/query.php';
    var url = 'http://192.168.1.64/query.php';
    var response = await http.post(Uri.parse(url), body: {
      'idalumno': idalumno,
      'idgrupo': idgrupo,
      'momento': momento,
    });

/*     var response =
        await http.post(Uri.parse(url)).timeout(Duration(seconds: 90)); */

    var datos = json.decode(response.body);

    var registros = <Alumno>[];

    for (datos in datos) {
      registros.add(Alumno.fromJson(datos));
    }
    return registros;
  }

  Future<List<Promedio>> getPromedio() async {
    late SharedPreferences prefs;

    prefs = await SharedPreferences.getInstance();
    final String? idalumno = prefs.getString('idalumno');
    final String? idgrupo = prefs.getString('idgrupo');
    final String? momento = prefs.getString('momento');

    //var url = 'http://utpproyectos.com.mx/swcalificaciones/chuc/query.php';
    var url = 'http://192.168.1.64/promedio.php';
    var response = await http.post(Uri.parse(url), body: {
      'idalumno': idalumno,
      'idgrupo': idgrupo,
      'momento': momento,
    });

/*     var response =
        await http.post(Uri.parse(url)).timeout(Duration(seconds: 90)); */

    var datos = json.decode(response.body);

    var registros = <Promedio>[];

    for (datos in datos) {
      registros.add(Promedio.fromJson(datos));
    }
    return registros;
  }

  @override
  void initState() {
    super.initState();
    getAlumno().then((value) {
      setState(() {
        alumnoList.addAll(value);
      });
    });
    getPromedio().then((value) {
      setState(() {
        promedioList.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      body: Column(
        children: [
          SizedBox(height: getRelativeHeight(0.025)),
          UTPAppBar(
            key: null,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: promedioList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Column(
                        children: [
                          InkWell(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: Text(
                                    promedioList[index].nomalumno,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                          ),
                          InkWell(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                  'Cuatrimestre: ' +
                                      promedioList[index].nomgrupo,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                  'Parcial ' +
                                      promedioList[index].momento.toString(),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                  'Promedio: ' +
                                      promedioList[index].promedio.toString(),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Text(
                                  'Promedio base: ' +
                                      promedioList[index]
                                          .promedio_base
                                          .toString(),
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: alumnoList.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  alumnoList[index].nomasignatura,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Calificación: " +
                                      alumnoList[index].calificacion.toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Calificación Base: " +
                                      alumnoList[index]
                                          .calificacion_base
                                          .toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Asistencia " +
                                      alumnoList[index].asistencia.toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  );
                }),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FormularioCalificaciones()),
                  );
                },
                child: Text("Regresar")),
          )
        ],
      ),
    );
  }
}
