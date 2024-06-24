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
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Hello',
          style: TextStyle(fontSize: _value),
        ),
        SizedBox(height: 50),
        Slider(
            min: 10,
            max: 100,
            // label: _value.round().toString(),
            value: _value,
            onChanged: (double value) {
              setState(() {
                _value = value;
                print(_value);
              });
            })
      ],
    ));
  }
}
