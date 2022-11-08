import 'package:flutter/material.dart';

import '../../drawer.dart';
import '../../size_confige.dart';
import '../home/appbar.dart';
import 'package:flip_card/flip_card.dart';

class OfertaEducativa extends StatefulWidget {
  const OfertaEducativa({super.key});

  @override
  State<OfertaEducativa> createState() => _OfertaEducativaState();
}

class _OfertaEducativaState extends State<OfertaEducativa> {
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
              'NUESTRAS CARRERAS',
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
                    TextSpan(text: 'Conoce nuestra '),
                    TextSpan(
                        text: 'Oferta Educativa ',
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text:
                            '\nContamos con 9 programas educativos en 5 áreas de conocimiento a elegir:',
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
                                'http://www.utponiente.edu.mx/utp/assets/img/oferta%20educativa/ADF.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Carreras del Área Administración",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.022),
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
                                'Área Administración...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getRelativeWidth(0.028),
                                ),
                              ),
                            ),
                            Text(
                              'Planificarás las estrategias que permitan evaluar la situación financiera de una organización, mediante técnicas de análisis y proyección, que permitan optimizar los recursos y el desempeño del personal. Obtendrás las competencias para lograr que una empresa o negocio propio, alcance los objetivos y se posicione en su entorno.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.023),
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
                                'http://www.utponiente.edu.mx/utp/assets/img/oferta%20educativa/GAS%202.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Carreras del Área Gastronomía",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.020),
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
                                'Área Gastronomía...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getRelativeWidth(0.028),
                                ),
                              ),
                            ),
                            Text(
                              'Crearás productos gastronómicos aprendiendo desde la aplicación de recetas estándar, selección de insumos correctos, normas de calidad y actividades de creatividad, para posicionarte a ti y a la organización como una gran opción en la industria de alimentos y bebidas. Obtendrás las competencias para ser un impulsor de la innovación gastronómica en la región.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.023),
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
                                'http://www.utponiente.edu.mx/utp/assets/img/oferta%20educativa/PAL.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Carreras del Área Procesos Alimentarios",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.020),
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
                                'Área Procesos Alimentarios...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getRelativeWidth(0.028),
                                ),
                              ),
                            ),
                            Text(
                              'Transformarás materias primas en productos innovadores, utilizando tecnología de vanguardia, que proporcionen un valor agregado e industrialización de los mismos, así como aplicar las técnicas de conservación de alimentos, análisis microbiológicos y estrategias que prolonguen la vida útil de un producto.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.023),
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
                                'http://www.utponiente.edu.mx/utp/assets/img/oferta%20educativa/TIDSM.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Carreras del Área Tecnologías",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.020),
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
                                'Área Tecnologías...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getRelativeWidth(0.028),
                                ),
                              ),
                            ),
                            Text(
                              'Aprenderás las técnicas y software para la programación de aplicaciones, utilizando lenguajes específicos de vanguardia que permitan soluciones empresariales. Obtendrás las competencias necesarias que te posicionarán como un especialista en esta competitiva área de formación.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.023),
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
                                'http://www.utponiente.edu.mx/utp/assets/img/oferta%20educativa/TUR.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Carreras del Área Turismo",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.020),
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
                                'Área Turismo...',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: getRelativeWidth(0.028),
                                ),
                              ),
                            ),
                            Text(
                              'Crearás rutas y recorridos turísticos alternativos, considerando los recursos existentes, análisis del mercado y oportunidades de mejora. Conocerás las técnicas para aplicar los distintos estilos de promoción turística, así como planificar actividades de animación.',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: getRelativeWidth(0.023),
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
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'COSTO DE LAS CUOTAS',
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
                    TextSpan(text: 'Costo educativo: '),
                    TextSpan(
                        text: 'Cuotas',
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(
                        text:
                            '\nEl pago de las cuotas se realiza al inicio de cada cuatrimestre.',
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
                textScaleFactor: 0.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Center(
                  /** Card Widget **/
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,

                    child: SizedBox(
                      width: 170,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ), 
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black, fontSize: 36),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Registro EXANI II',
                                      style: TextStyle(fontSize: 29)),
                                  TextSpan(
                                      text: '\n\$350  ',
                                      style: TextStyle(color: Colors.blue)),
                                  TextSpan(
                                      text: '/ por examen',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.grey)),
                                  TextSpan(
                                      text:
                                          '\nEl pago corresponde al costo del EXANI II, y se paga una sola vez, y es un requisito necesario para poder ingresar a cualquiera de nuestras carreras.',
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),
                          ],
                        ), 
                      ), 
                    ),
                  ), 
                ),
                 Center(
                  /** Card Widget **/
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,

                    child: SizedBox(
                      width: 170,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black, fontSize: 36,),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Técnico Superior Universitario',
                                      style: TextStyle(fontSize: 29)),
                                  TextSpan(
                                      text: '\n\$300 ',
                                      style: TextStyle(color: Colors.blue)),
                                  TextSpan(
                                      text: '/ cuatrimestral',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.grey)),
                                  TextSpan(
                                      text:
                                          '\nPago correspondiente a la cuota de reinscripción de nivel TSU. Es parte de los requisitos de reinscripción y te dan derecho a nuestros servicios educativos.',
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),
                          ],
                        ),
                      ), 
                    ), 
                  ), 
                ),
              ],
            ),
          ), 
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Center(
                  /** Card Widget **/
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,

                    child: SizedBox(
                      width: 170,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ), 
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black, fontSize: 36),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Registro a nivel licenciatura',
                                      style: TextStyle(fontSize: 29)),
                                  TextSpan(
                                      text: '\n\$350  ',
                                      style: TextStyle(color: Colors.blue)),
                                  TextSpan(
                                      text: '/ pago único',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.grey)),
                                  TextSpan(
                                      text:
                                          '\nEste pago corresponde a la cuota de registro a la continuidad de estudios de nivel licenciatura. Se realiza una sola vez en el momento que acudes a solicitar tu permanencia.',
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),
                          ],
                        ), 
                      ), 
                    ),
                  ), 
                ),
                 Center(
                  /** Card Widget **/
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,

                    child: SizedBox(
                      width: 170,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black, fontSize: 36,),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Licenciatura',
                                      style: TextStyle(fontSize: 29)),
                                  TextSpan(
                                      text: '\n\$500 ',
                                      style: TextStyle(color: Colors.blue)),
                                  TextSpan(
                                      text: '/ cuatrimestral',
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.grey)),
                                  TextSpan(
                                      text:
                                          '\nPago correspondiente a la cuota de reinscripción de nivel Licenciatura, que se debe realizar al inicio de cada cuatrimestre. Éste pago es parte de los requisitos de reinscripción y te dan derecho a nuestros servicios educativos. ',
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                              textScaleFactor: 0.5,
                            ),
                          ],
                        ),
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
