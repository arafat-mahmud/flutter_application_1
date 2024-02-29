// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter_application_1/All_adding_page/four.dart';
import 'package:flutter_application_1/All_adding_page/one.dart';
import 'package:flutter_application_1/All_adding_page/three.dart';
import 'package:flutter_application_1/All_adding_page/two.dart';


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _currentindex = 0;

  final pages = [
    one(),
    two(),
    three(),
    four(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon((Icons.message)),
              label: ('Homepage'),
            ),
            BottomNavigationBarItem(
              icon: Icon((Icons.call)),
              label: ("Call"),
            ),
            BottomNavigationBarItem(
              icon: Icon((Icons.pan_tool)),
              label: ("Pan tool"),
            ),
            BottomNavigationBarItem(
              icon: Icon((Icons.radio)),
              label: ("Radio"),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
        body: pages[_currentindex]);
  }
}
