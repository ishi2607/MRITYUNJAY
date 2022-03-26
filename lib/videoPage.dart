// ignore_for_file: file_names, unnecessary_import, camel_case_types, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/utility/routes.dart';

class video extends StatefulWidget {
  video({Key? key}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Video Call"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 600),
          index: index,
          height: 45,
          backgroundColor: Colors.blue,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            Icon(Icons.home, size: 30),
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
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 40,
                width: 87,
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
                    Navigator.pushNamed(context, MyRoutes.call);
                  },
                  child: Ink.image(
                    image: AssetImage(
                      'assets/images/Voice Call.jpeg',
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
