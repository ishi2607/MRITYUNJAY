// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, camel_case_types, unnecessary_import, file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/utility/routes.dart';

class doctor extends StatefulWidget {
  doctor({Key? key}) : super(key: key);

  @override
  State<doctor> createState() => _doctorState();
}

class _doctorState extends State<doctor> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor's List"),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 600),
          index: index,
          height: 45,
          backgroundColor: Colors.blue,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              children: <Widget>[
                ListTile(
                  title: Text('Doctor Name'),
                  leading: Icon(Icons.near_me),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Doctor Name'),
                  leading: Icon(Icons.near_me),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Doctor Name'),
                  leading: Icon(Icons.near_me),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Doctor Name'),
                  leading: Icon(Icons.near_me),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Doctor Name'),
                  leading: Icon(Icons.near_me),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
