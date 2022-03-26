// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/utility/routes.dart';

class injuryPage extends StatefulWidget {
  injuryPage({Key? key}) : super(key: key);

  @override
  State<injuryPage> createState() => _injuryPageState();
}

class _injuryPageState extends State<injuryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Injury List"),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          ListView(shrinkWrap: true, children: <Widget>[
            ListTile(
              title: Text('Injury Name'),
              leading: Icon(Icons.near_me),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
            ListTile(
              title: Text('Injury Name'),
              leading: Icon(Icons.near_me),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
            ListTile(
              title: Text('Injury Name'),
              leading: Icon(Icons.near_me),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
            ListTile(
              title: Text('Injury Name'),
              leading: Icon(Icons.near_me),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
            ListTile(
              title: Text('Injury Name'),
              leading: Icon(Icons.near_me),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
            ListTile(
              title: Text('Injury Name'),
              leading: Icon(Icons.near_me),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
            ListTile(
              title: Text('Injury Name'),
              leading: Icon(Icons.near_me),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
          ])
        ])));
  }
}
