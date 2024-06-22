// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'All_adding_page/a.dart';
import 'All_adding_page/b.dart';
import 'All_adding_page/c.dart';
import 'All_adding_page/d.dart';
import 'All_adding_page/e.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final List<Widget> pages = [A(), B(), C(), D(), E()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blue,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index){
          setState(() {
            _page = index;
          });
        },
        // height: 50,

        items: [
        Icon(Icons.inbox),
        Icon(Icons.update),
        Icon(Icons.home),
        Icon(Icons.alarm),
        Icon(Icons.person)
      ]),
      body: pages[_page],
    );
  }
}
