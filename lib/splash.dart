// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:sample/utility/routes.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.pushReplacementNamed(context, MyRoutes.homePage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 160, 210, 250),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/s.jpeg"),
              radius: 80,
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Mrityunjay",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 400,
                ),
                Container(
                  child: Text(
                    "LIFE'S MATTER FOR US",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
