// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_declarations, prefer_const_literals_to_create_immutables, unused_import

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:sample/doctorListPage.dart';
import 'package:sample/main.dart';
import 'package:sample/utility/routes.dart';
import 'package:sample/voicePage.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  void _showMaterialDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
                child: Text(
              'WANT TO COMPLAIN',
              style: TextStyle(
                  fontWeight: FontWeight.bold, decoration: TextDecoration.none),
            )),
            content: TextField(
              decoration: InputDecoration(
                  hintText: "Write Complain",
                  labelText: " Message",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                  border: OutlineInputBorder()),
            ),
            actions: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homePage);
                  },
                  child: Text(
                    "SEND",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "RaleWay",
                        fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ],
          );
        });
  }

  final Screens = [homePage(), Voice(), doctor()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final number = "1033";
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                _showMaterialDialog();
              },
              icon: Icon(Icons.comment))
        ],
        shadowColor: Colors.black26,
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
      drawer: Container(
        color: Colors.blue,
        child: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: Center(
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Welcome To Mrityunjay App",
                      style: TextStyle(
                          fontFamily: "algerian",
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    accountEmail: null,
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/s.jpeg",
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homePage);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.black,
              ),
              title: Text(
                "Voice Call",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.call);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.voice_chat,
                color: Colors.black,
              ),
              title: Text(
                "Video Call",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.video);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.list,
                color: Colors.black,
              ),
              title: Text(
                "Doctor's List",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.doctor);
              },
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.feedback,
                color: Colors.black,
              ),
              title: Text(
                "Feedback",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.contact_page,
                color: Colors.black,
              ),
              title: Text(
                "Contact Us",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 230,
            ),
            Center(
              child: Container(
                child: Text(
                  "Design & Created By Team GARIMA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ]),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/D.jpg"), fit: BoxFit.cover)),
        child: Center(
            child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              margin: EdgeInsets.all(25),
              // ignore: deprecated_member_use
              child: FlatButton(
                child: Text(
                  "Mrityunjay",
                  style: TextStyle(
                      decoration: TextDecoration.overline,
                      fontSize: 40.0,
                      fontFamily: "RaleWay",
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.treatment);
                },
                child: Text(
                  "Treatment",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "RaleWay",
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.general_call);
                },
                child: Text(
                  "General Call",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "RaleWay",
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber(number);
                },
                child: Text(
                  "Emergency ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "RaleWay",
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
          ),
        ])),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 25.0,
        tooltip: "Press to open  Website link",
        child: Text(
          "Website",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        ),
        splashColor: Colors.blueAccent,
        onPressed: () async {
          final url = "http://rajgupta-hackathon.rf.gd/";

          await launch(url);
        },
      ),
    );
  }
}
