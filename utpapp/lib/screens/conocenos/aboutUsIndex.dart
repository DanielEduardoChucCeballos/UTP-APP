import 'package:flutter/material.dart';

import '../../drawer.dart';
import '../../size_confige.dart';
import '../home/appbar.dart';

class AboutUsIndex extends StatefulWidget {
  const AboutUsIndex({super.key});

  @override
  State<AboutUsIndex> createState() => _AboutUsIndexState();
}

class _AboutUsIndexState extends State<AboutUsIndex> {
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
          Center(
            child: Text(
              'AUTORIDADES EDUCATIVAS',
              style: TextStyle(
                color: Colors.blue,
                background: Paint()..color = Color.fromARGB(255, 190, 225, 231),
              ),
            ),
          ),
          Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 36),
                children: <TextSpan>[
                  TextSpan(text: 'Conoce a nuestras '),
                  TextSpan(
                      text: 'autoridades educativas ',
                      style: TextStyle(color: Colors.blue)),
                ],
              ),
              textScaleFactor: 0.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    Container(
                      height: 300.0,
                      width: 300,
                      child: Ink.image(
                        image: NetworkImage(
                            'http://www.utponiente.edu.mx/utp/assets/img/team/rector2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      title: Text('Lic. Víctor Manuel Maravé Sosa'),
                      subtitle: Text('Rector'),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    Container(
                      height: 400.0,
                      width: 300,
                      child: Ink.image(
                        image: NetworkImage(
                            'http://www.utponiente.edu.mx/utp/assets/img/team/DIR%20CAR.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      title: Text('Dr. Manuel Alejandro Kantún Ramírez'),
                      subtitle: Text('Director de Carreras'),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    Container(
                      height: 400.0,
                      width: 300,
                      child: Ink.image(
                        image: NetworkImage(
                            'http://www.utponiente.edu.mx/utp/assets/img/team/DIR%20DAF.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      title: Text('Lic. Sergio Alberto Valencia Guillén'),
                      subtitle: Text('Director de Administración y Finanzas'),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    Container(
                      height: 400.0,
                      width: 300,
                      child: Ink.image(
                        image: NetworkImage(
                            'http://www.utponiente.edu.mx/utp/assets/img/team/DIR%20VIN.JPG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ListTile(
                      title: Text('Lic. Luis Antonio Tut Xool'),
                      subtitle: Text('Director de Vinculación'),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
