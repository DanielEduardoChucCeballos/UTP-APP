import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../drawer.dart';
import '../size_confige.dart';
import 'aboutus.dart';
import 'home/appbar.dart';
import 'llamadas_api.dart';

class TeachersPage extends StatefulWidget {
  const TeachersPage({super.key});

  @override
  State<TeachersPage> createState() => _TeachersPageState();
}

class _TeachersPageState extends State<TeachersPage> {
  //Variables de textfiets
  var messageController = TextEditingController();

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
          //:::: DISIGN :::://
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Card(
              elevation: 10.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/user.png',
                              ),
                              radius: 40.0,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Nombre:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Nombre completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Correo:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Correo completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              
                              
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          // TextButton.icon(
                          //     onPressed: _showWappMenu,
                          //     icon: const Icon(Icons.whatsapp),
                          //     label: const Text("WhatsApp")),
                          // TextButton.icon(
                          //     onPressed: () async {
                          //       FlutterPhoneDirectCaller.callNumber(
                          //           "9992721211");
                          //     },
                          //     icon: const Icon(Icons.call),
                          //     label: const Text("LLamada")),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutUsPage()),
                                );
                              },
                              icon: const Icon(Icons.email),
                              label: const Text("Gmail")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Card(
              elevation: 10.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/user.png',
                              ),
                              radius: 40.0,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Nombre:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Nombre completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Correo:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Correo completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              
                              
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          // TextButton.icon(
                          //     onPressed: _showWappMenu,
                          //     icon: const Icon(Icons.whatsapp),
                          //     label: const Text("WhatsApp")),
                          // TextButton.icon(
                          //     onPressed: () async {
                          //       FlutterPhoneDirectCaller.callNumber(
                          //           "9992721211");
                          //     },
                          //     icon: const Icon(Icons.call),
                          //     label: const Text("LLamada")),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutUsPage()),
                                );
                              },
                              icon: const Icon(Icons.email),
                              label: const Text("Gmail")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Card(
              elevation: 10.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/user.png',
                              ),
                              radius: 40.0,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Nombre:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Nombre completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Correo:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Correo completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              
                              
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          // TextButton.icon(
                          //     onPressed: _showWappMenu,
                          //     icon: const Icon(Icons.whatsapp),
                          //     label: const Text("WhatsApp")),
                          // TextButton.icon(
                          //     onPressed: () async {
                          //       FlutterPhoneDirectCaller.callNumber(
                          //           "9992721211");
                          //     },
                          //     icon: const Icon(Icons.call),
                          //     label: const Text("LLamada")),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutUsPage()),
                                );
                              },
                              icon: const Icon(Icons.email),
                              label: const Text("Gmail")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Card(
              elevation: 10.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/user.png',
                              ),
                              radius: 40.0,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Nombre:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Nombre completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Correo:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Correo completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              
                              
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          // TextButton.icon(
                          //     onPressed: _showWappMenu,
                          //     icon: const Icon(Icons.whatsapp),
                          //     label: const Text("WhatsApp")),
                          // TextButton.icon(
                          //     onPressed: () async {
                          //       FlutterPhoneDirectCaller.callNumber(
                          //           "9992721211");
                          //     },
                          //     icon: const Icon(Icons.call),
                          //     label: const Text("LLamada")),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutUsPage()),
                                );
                              },
                              icon: const Icon(Icons.email),
                              label: const Text("Gmail")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Card(
              elevation: 10.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/user.png',
                              ),
                              radius: 40.0,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Nombre:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Nombre completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Correo:",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Correo completo del Maestro"),
                              SizedBox(
                                height: 5.0,
                              ),
                              
                              
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          // TextButton.icon(
                          //     onPressed: _showWappMenu,
                          //     icon: const Icon(Icons.whatsapp),
                          //     label: const Text("WhatsApp")),
                          // TextButton.icon(
                          //     onPressed: () async {
                          //       FlutterPhoneDirectCaller.callNumber(
                          //           "9992721211");
                          //     },
                          //     icon: const Icon(Icons.call),
                          //     label: const Text("LLamada")),
                          TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutUsPage()),
                                );
                              },
                              icon: const Icon(Icons.email),
                              label: const Text("Gmail")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showWappMenu() {
    showDialog(
        context: context,
        builder: (buildcontext) {
          return AlertDialog(
            title: const Text("Enviar WhatsApp"),
            content: const Text("Enviar mensaje a\n --Nombre del MAESTRO"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.multiline,
                  controller: messageController,
                  maxLines: null,
                  decoration: const InputDecoration.collapsed(
                      hintText: "Escribe un mensaje breve y cordial...",
                      focusColor: Colors.green,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ))),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  templateWhatsApp();
                },
                label: const Text("Continuar..."),
                icon: const Icon(Icons.next_plan),
              )
            ],
          );
        });
  }

  //WhatsApp Message Template
  void templateWhatsApp() async {
    var sms = messageController.text;
    var whatsappNumber = "+529997403317";
    var whatsappURL = "whatsapp://send?phone=$whatsappNumber&text=$sms";

    await launchUrlString(whatsappURL).then(_close());
  }

  _close() {
    Navigator.pop(context);
  }
}
