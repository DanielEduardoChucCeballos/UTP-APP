import 'package:flutter/material.dart';

import '../../drawer.dart';
import '../../size_confige.dart';
import '../home/appbar.dart';
import 'package:flip_card/flip_card.dart';

class VidaUniversitaria extends StatefulWidget {
  const VidaUniversitaria({super.key});

  @override
  State<VidaUniversitaria> createState() => _VidaUniversitariaState();
}

class _VidaUniversitariaState extends State<VidaUniversitaria> {
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
              'VIDA UNIVERSITARIA',
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
                    TextSpan(text: 'Servicios para alumnos durante su '),
                    TextSpan(
                        text: 'Vida Universitaria ',
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text:
                            '\nInformación de los servicios que puedes obtener durante toda tu permanencia como alumno de la UTP.',
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
                textScaleFactor: 0.5,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
                            child: Image.network(
                                'http://www.utponiente.edu.mx/utp/assets/img/servicios/cuidado.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "ESTADÍA PROFESIONAL (Proceso) ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.026),
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
                                'ESTADÍA PROFESIONAL',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getRelativeWidth(0.028),
                                ),
                              ),
                            ),
                            Text(
                              'Conoce el proceso que debes seguir para realizar tu Estadía Profesional',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.027),
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
                            child: Image.network(
                                'http://www.utponiente.edu.mx/utp/assets/img/vida%20universitaria/casa.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "VILLAS UNIVERSITARIAS",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.026),
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
                            Text(
                              'Si eres estudiante foraneo, puedes hospedarte en nuestras villas ¡Consulta el proceso!',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.027),
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
                            child: Image.network(
                                'http://www.utponiente.edu.mx/utp/assets/img/control%20escolar/becas.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "TRÁMITES DE BECA",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.026),
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
                            Text(
                              'Existen diversas convocatorias de becas académicas y económicas que apoyan a los alumnos para garantizar que se concluyan sus estudios superiores de la mejor forma. Te ayudamos a tramitarlas para que tengas menos obstáculos para obtener este beneficio.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.027),
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
                            child: Image.network(
                                'http://www.utponiente.edu.mx/utp/assets/img/vida%20universitaria/corriendo.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "DEPORTES Y CULTURA",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.026),
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
                            Text(
                              'Te invitamos a unirte a las distintas disciplinas deportivas que se practican en la Universidad, así como distintas actividades culturales que te integrarán a una Vida Universitaria dinámica y divertida. Podrás participar en los distintos Encuentros Deportivos y Culturales a nivel Regional y Nacional. Demuestra tu talento y compite para reforzar el Orgullo UTP.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.027),
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
                            child: Image.network(
                                'http://www.utponiente.edu.mx/utp/assets/img/vida%20universitaria/mundo.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "MOVILIDAD ESTUDIANTIL",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.026),
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
                            Text(
                              '¿Te interesaría reforzar tus conocimientos académicos en el extranjero? Contamos con el Programa de Movilidad Académica, con el que podrás participar para hacer tu Estadía en países como Francia, Estados Unidos, entre otros, reforzar tu segundo idioma y vivir experiencias únicas para tu desarrollo profesional y personal.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.027),
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
                            child: Image.network(
                                'http://www.utponiente.edu.mx/utp/assets/img/servicios/busqueda-de-trabajo.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "BOLSA DE TRABAJO ¿Eres egresado?",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.026),
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
                            Text(
                              'La Universidad Tecnológica del Poniente te acompaña en todo momento de tu crecimiento profesional, por lo que estaremos en contacto contigo para apoyarte a conseguir mejores oportunidades de empleo en tu área de formación. Te invitamos a inscribirte a la Bolsa de Trabajo y recibir las invitaciones a eventos y vacantes disponibles en distintas empresas de la región y del país.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.027),
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
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
                            child: Image.network(
                                'http://www.utponiente.edu.mx/utp/assets/img/vida%20universitaria/hombre%20(1).png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "EDUCACIÓN CONTINUA ¿Eres egresado?",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.026),
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
                            Text(
                              'La Universidad Tecnológica del Poniente ofrece al Sector Productivo tanto público como privado, soluciones a problemas o necesidades empresariales, a través de la Investigación aplicada, el Desarrollo de Tecnología, así como diversos servicios de Consultoría, Asistencia Técnica, Diagnósticos entre otros, que nos permitan impactar de manera positiva en la sociedad.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.027),
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
