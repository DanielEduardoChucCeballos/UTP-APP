import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:utpapp/drawer.dart';
import 'package:flutter/services.dart';
import 'package:utpapp/models/Alumno.dart';
import '../../../size_confige.dart';
import '../../home/appbar.dart';
import 'calificaciones.dart';

class FormularioCalificaciones extends StatefulWidget {
  const FormularioCalificaciones({super.key});

  @override
  State<FormularioCalificaciones> createState() =>
      _FormularioCalificacionesState();
}

class _FormularioCalificacionesState extends State<FormularioCalificaciones> {
  List groupItemList = [];
  late SharedPreferences prefs;

  Future getGrupos() async {
    late SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();
    final String? idalumno = prefs.getString('idalumno');

    var gruposUrl = "http://192.168.1.64/selnomgrupo.php";

    http.Response response = await http.post(Uri.parse(gruposUrl), body: {
      'idalumno': idalumno,
    });

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        groupItemList = jsonData;
      });
    }
  }

  List momentItemList = [];

  Future getMoment() async {
    late SharedPreferences prefs;
    prefs = await SharedPreferences.getInstance();
    final String? idalumno = prefs.getString('idalumno');

    var gruposUrl = "http://192.168.1.64/momento.php";

    http.Response response = await http.post(Uri.parse(gruposUrl), body: {
      'idalumno': idalumno,
    });

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        momentItemList = jsonData;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getGrupos();
    getMoment();
  }

  var dropdownvalueG;
  var dropdownvalueM;

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
                    Text(
                      "Consulte sus calificaciones",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Seleccione el cuatrimestre al cual quiere consultar:",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    DropdownButton(
                      hint: Text('Grupo'),
                      items: groupItemList.map((item) {
                        return DropdownMenuItem(
                          value: item['idgrupo'],
                          child: Text(item['nomgrupo'].toString()),
                        );
                      }).toList(),
                      onChanged: (newVal) {
                        setState(() {
                          dropdownvalueG = newVal;
                        });
                      },
                      value: dropdownvalueG,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Seleccione el parcial al cual quiere consultar:",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    DropdownButton(
                      hint: Text('Parcial'),
                      items: momentItemList.map((item) {
                        return DropdownMenuItem(
                          value: item['momento'],
                          child: Text(item['momento'].toString()),
                        );
                      }).toList(),
                      onChanged: (newVal) {
                        setState(() {
                          dropdownvalueM = newVal;
                        });
                      },
                      value: dropdownvalueM,
                    ),
                    Center(
                      child: TextButton(
                          onPressed: () => _consulta(context),
                          child: Text("Consultar")),
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

  void _consulta(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("idgrupo", dropdownvalueG);
    prefs.setString("momento", dropdownvalueM);
    print(dropdownvalueG);
    print(dropdownvalueM);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Calificaciones()),
    );
  }
}
