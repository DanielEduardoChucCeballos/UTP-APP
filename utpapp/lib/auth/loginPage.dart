import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:utpapp/auth/registerPage.dart';
import 'package:sign_button/sign_button.dart';
import 'package:utpapp/controllers/authenticator.dart';
import 'package:utpapp/screens/aboutus.dart';
import 'package:utpapp/screens/button_nav_bar.dart';
import 'package:utpapp/screens/home/homeScreen.dart';
import '../controllers/biometric_helper.dart';
import '../screens/teacherPage.dart';
import '../screens/whatsapp_api.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  bool showBiometric = false;
  bool isAuthenticated = false;
  @override
  void initState() {
    isBiometricsAvailable();
    super.initState();
  }

  isBiometricsAvailable() async {
    showBiometric = await BiometricHelper().hasEnrolledBiometrics();
    setState(() {});
  }

  Widget build(BuildContext context) {
    Firebase.initializeApp();

    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 32, 82, 32)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Container(
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints:
                      BoxConstraints(minHeight: viewportConstraints.maxHeight),
                  child: Container(
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            color: Colors.cyan,
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Center(
                                    child: Image(
                                        image: AssetImage(
                                            'assets/images/logo.png')),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(30),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                              child: Column(
                                children: <Widget>[
                                  TextField(
                                    controller: email,
                                    autocorrect: true,
                                    decoration: InputDecoration(
                                      hintText: 'Ingrese su Email',
                                      hintStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 3,
                                        ),
                                      ),
                                      prefixIcon: IconTheme(
                                        data: IconThemeData(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: const Icon(Icons.email),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  TextField(
                                    controller: password,
                                    autocorrect: true,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: 'Ingrese su contraseña',
                                      hintStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(
                                          color: Theme.of(context).primaryColor,
                                          width: 3,
                                        ),
                                      ),
                                      prefixIcon: IconTheme(
                                        data: IconThemeData(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        child: const Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontStyle: FontStyle.normal),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()),
                                          );
                                        },
                                        child: const Text('Iniciar Sesión'),
                                      ),
                                      const SizedBox(height: 20),
                                      if (showBiometric)
                                        ElevatedButton(
                                          child: const Text(
                                            'Biometric Login',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          onPressed: () async {
                                            isAuthenticated =
                                                await BiometricHelper()
                                                    .authenticate();
                                            setState(() {});

                                            // ignore: use_build_context_synchronously
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                       HomeScreen()),
                                            );
                                          },
                                        ),
                                      if (isAuthenticated)
                                        const Padding(
                                          padding: EdgeInsets.only(top: 50.0),
                                          child: Text(
                                            'Well done!, Authenticated',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                        ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          const Text("¿No estas registrado?"),
                                          TextButton(
                                            child: const Text("Registrarse"),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const RegisterPage()),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                      Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SignInButton.mini(
                                              buttonType: ButtonType.google,
                                              onPressed: () async {
                                                User? user = await Authenticator
                                                    .iniciarSesion(
                                                        context: context);
                                                print(user?.displayName);
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ButtonNavBar()),
                                                );
                                              },
                                            ),
                                            SignInButton.mini(
                                              buttonType: ButtonType.facebook,
                                              onPressed: () {},
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
