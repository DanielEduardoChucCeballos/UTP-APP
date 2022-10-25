import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '/../size_confige.dart';

class UTPAppBar extends StatefulWidget {
  const UTPAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<UTPAppBar> createState() => _UTPAppBarState();
}

final user = FirebaseAuth.instance.currentUser;

    final name = user?.displayName;
    final email = user?.email;
class _UTPAppBarState extends State<UTPAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getRelativeWidth(0.04)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            color: Color.fromARGB(255, 43, 51, 122),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hola, ${name!}",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: getRelativeWidth(0.04)),
              ),
              SizedBox(height: getRelativeHeight(0.003)),
              Text(
                "Universidad Tecnológica del Poniente",
                style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: getRelativeWidth(0.036)),
              ),
            ],
          ),
          Container(
            height: getRelativeHeight(0.06),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    offset: Offset(0, 4),
                    color: Colors.black54,
                  )
                ],
                color: Color(0xffA295FD),
                borderRadius: BorderRadius.circular(5)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset("assets/images/user.png")),
          )
        ],
      ),
    );
  }
}
