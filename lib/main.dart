// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_element, camel_case_types, unused_import, prefer_const_constructors_in_immutables, unused_field, prefer_final_fields, must_be_immutable, avoid_unnecessary_containers, unnecessary_import, non_constant_identifier_names, avoid_web_libraries_in_flutter, prefer_const_declarations, unused_local_variable, avoid_print

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:sample/doctorListPage.dart';
import 'package:sample/generalCallPage.dart';
import 'package:sample/homePage.dart';
import 'package:sample/image_reconization.dart';
import 'package:sample/injurypage.dart';
import 'package:sample/splash.dart';
import 'package:sample/utility/routes.dart';
import 'package:sample/videoPage.dart';
import 'package:sample/voicePage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: splash(),
        debugShowCheckedModeBanner: false,
        routes: {
          MyRoutes.call: (context) => Voice(),
          MyRoutes.video: (context) => video(),
          MyRoutes.doctor: (context) => doctor(),
          MyRoutes.general_call: (context) => general_call(),
          MyRoutes.injury: (context) => injuryPage(),
          MyRoutes.homePage: (context) => homePage(),
          MyRoutes.treatment: (context) => treatment(),
        });
  }
}
