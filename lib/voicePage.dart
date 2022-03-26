// ignore_for_file: unused_field, prefer_final_fields, must_be_immutable, avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unnecessary_import, must_call_super, unused_local_variable, unused_import

import 'dart:math';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sample/utility/routes.dart';

class Voice extends StatefulWidget {
  Voice({Key? key}) : super(key: key);

  @override
  State<Voice> createState() => _VoiceState();
}

class _VoiceState extends State<Voice> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Voice Call"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 600),
          index: index,
          height: 45,
          backgroundColor: Colors.blue,
          items: [
            Icon(Icons.home, size: 30),
            // ignore: prefer_const_constructors
            Icon(Icons.call, size: 30),
            Icon(Icons.list, size: 30),
          ],
          onTap: (index) {
            setState(() {
              if (index == 0) {
                Navigator.pushNamed(context, MyRoutes.homePage);
              } else if (index == 1) {
                Navigator.pushNamed(context, MyRoutes.call);
              } else if (index == 2) {
                Navigator.pushNamed(context, MyRoutes.doctor);
              }
            });
          }),
      body: Padding(
        padding: const EdgeInsets.all(45.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Your Name",
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 45,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Your Location",
                    labelText: "Location",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    border: OutlineInputBorder()),
              ),
              // ignore: deprecated_member_use
              FlatButton(
                child: Text(
                  "Don't know Location, click Here",
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      fontSize: 15.0,
                      fontFamily: "RaleWay",
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
              // ignore: unnecessary_null_comparison

              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 45,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.doctor);
                  },
                  child: Text("CAll"),
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.video);
                  },
                  child: Ink.image(
                    image: AssetImage(
                      'assets/images/v.jpeg',
                    ),
                    height: 130,
                    width: 130,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
