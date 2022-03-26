// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, unused_field, unused_local_variable, unnecessary_null_comparison, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:sample/utility/routes.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class treatment extends StatefulWidget {
  treatment({Key? key}) : super(key: key);

  @override
  State<treatment> createState() => _treatmentState();
}

class _treatmentState extends State<treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Treatment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(90.0),
        child: Column(children: [
          SizedBox(
            height: 50,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Camera",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "RaleWay",
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "From Gallery",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "RaleWay",
                      fontWeight: FontWeight.w500),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
