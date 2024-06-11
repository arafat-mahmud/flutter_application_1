// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'All_adding_page/one.dart';
import 'All_adding_page/two.dart';
import 'All_adding_page/three.dart';
import 'Pageview/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4, // length parameter
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Color.fromARGB(255, 173, 169, 169),
              labelColor: const Color.fromARGB(255, 255, 0, 0),
              tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.camera)),
            ]
            ),
          ),
          body: TabBarView(
            children: [
              one(),
              two(),
              three(),
              Page2(),
              
        ]),
      ),
    ));
  }
}
