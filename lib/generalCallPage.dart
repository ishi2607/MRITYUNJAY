// ignore_for_file: camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample/utility/routes.dart';

class general_call extends StatefulWidget {
  general_call({Key? key}) : super(key: key);

  @override
  State<general_call> createState() => _general_callState();
}

class _general_callState extends State<general_call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("General Call"),
      ),
      body: Row(children: [
        SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(27.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
              child: Ink.image(
                image: AssetImage(
                  'assets/images/Voice Call.jpeg',
                ),
                height: 140,
                width: 140,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.video);
            },
            child: Ink.image(
              image: AssetImage(
                'assets/images/v.jpeg',
              ),
              height: 155,
              width: 155,
            ),
          ),
        ),
      ]),
    );
  }
}
