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
  String selected = "Choose";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            selected,
            style: TextStyle(fontSize: 30),
          ),
        ),
        DropdownButton<String>(
            hint: Text('selected'),
            elevation: 16,
            items: [
              DropdownMenuItem(
                value: "A",
                child: Text("1"),
              ),
              DropdownMenuItem(
                value: "B",
                child: Text("2"),
              ),
            ],
            onChanged: (String? val) {
              setState(() {
                selected = val!;
              });
            })
      ],
    ));
  }
}
