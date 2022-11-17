import 'package:flutter/material.dart';

import '../../drawer.dart';
import '../../size_confige.dart';
import '../home/appbar.dart';
import 'package:flip_card/flip_card.dart';

class Servicios extends StatefulWidget {
  const Servicios({super.key});

  @override
  State<Servicios> createState() => _ServiciosState();
}

class _ServiciosState extends State<Servicios> {
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
              'SERVICIOS EMPERSARIALES',
              style: TextStyle(
                color: Colors.blue,
                background: Paint()..color = Color.fromARGB(255, 190, 225, 231),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(text: 'Conoce los '),
                    TextSpan(
                        text: 'Servicios Empersariales ',
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(text: 'disponibles para el sector productivo.'),

                    TextSpan(
                        text:
                            '\nLe invitamos a Vincularse con nosotros a través de un Convenio de Colaboración.',
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
                textScaleFactor: 0.5,
              ),
            ),
          ),
 Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              'assets/images/transferencia-de-datos.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "SERVICIOS TECNOLÓGICOS PARA EMPRESAS",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.025),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                    height: 180,
                    width: 150,
                  ),
                  back: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Servicios Tecnológicos',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.028),
                              ),
                            ),
                          ),
                          Text(
                            'La Universidad Tecnológica del Poniente ofrece al Sector Productivo tanto público como privado, soluciones a problemas o necesidades empresariales, a través de la Investigación aplicada, el Desarrollo de Tecnología, así como diversos servicios de Consultoría, Asistencia Técnica, Diagnósticos entre otros, que nos permitan impactar de manera positiva en la sociedad.',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.025),
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              Image.asset('assets/images/capacitacion_2.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "SERVICIOS DE CAPACITACIÓN PARA EMPRESAS",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.025),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                    height: 180,
                    width: 150,
                  ),
                  back: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Capacitación y Actualización Tecnológica',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.028),
                              ),
                            ),
                          ),
                          Text(
                            'La actualización y Educación Continua es una necesidad en las empresas, para contar con personal capacitado en los temas de vanguardia, que permitan crear una sociedad económica más competitiva. ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.025),
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              'assets/images/busqueda-de-trabajo.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "APOYO PARA LA EMPLEABILIDAD DE LAS EMPRESAS (Bolsa de trabajo)",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.023),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                    height: 180,
                    width: 150,
                  ),
                  back: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Bolsa de Trabajo',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.028),
                              ),
                            ),
                          ),
                          Text(
                            'Te invitamos a unirte a las distintas disciplinas deportivas que se practican en la Universidad, así como distintas actividades culturales que te integrarán a una Vida Universitaria dinámica y divertida. Podrás participar en los distintos Encuentros Deportivos y Culturales a nivel Regional y Nacional.',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.025),
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlipCard(
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/cuidado.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "ESTADÍAS PROFESIONALES",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.025),
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                    height: 180,
                    width: 150,
                  ),
                  back: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Estadías profesionales',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.028),
                              ),
                            ),
                          ),
                          Text(
                            'Al cursar el último cuatrimestre de su carrera, los alumnos deberán hacer una Estadía Profesional durante cuatro meses en empresas relacionadas con su área de formación. En esta etapa, la mayoría de nuestros alumnos egresados , además de completar este requerimiento para completar sus estudios universitarios.',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: getRelativeWidth(0.025),
                            ),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 160, 156, 156),
                          blurRadius: 4,
                          offset: Offset(3, 4), // Shadow position
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}
