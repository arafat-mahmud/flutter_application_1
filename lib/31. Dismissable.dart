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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Dismissible(
        key: ValueKey("abc"),
        onDismissed: (direction) {
          // Handle the dismiss action
        },
        secondaryBackground: Container(
          color: Colors.red,
          child: Icon(
            Icons.delete,
            size: 30,
          ),
        ),
        background: Container(
          color: Colors.green,
          child: Icon(
            Icons.delete,
            size: 30,
          ),
        ),
        child: ListTile(
          title: Text("Hello"),
          subtitle: Text("World"),
          trailing: Icon(
            Icons.ac_unit,
          ),
        ),
      ),
    ));
  }
}
