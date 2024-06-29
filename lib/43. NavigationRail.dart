// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: Colors.black87,
            labelType: NavigationRailLabelType.selected,
            
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.wifi),
                indicatorColor: Colors.white,
                label: Text(
                  'WiFi',
                  style: TextStyle(color: Colors.white),
                ),
                selectedIcon: Icon(
                  Icons.wifi,
                  color: Colors.blue,
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bluetooth),
                indicatorColor: Colors.white,
                label: Text(
                  'Bluetooth',
                  style: TextStyle(color: Colors.white),
                ),
                selectedIcon: Icon(
                  Icons.bluetooth,
                  color: Colors.blue,
                ),
              )
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (val) {
              setState(() {
                _selectedIndex = val;
              });
            },
            unselectedIconTheme: IconThemeData(color: Colors.white),
          )
        ],
      ),
    ));
  }
}
