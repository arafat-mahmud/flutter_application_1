// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/first": (context) => FirstScreen(),
        "/second": (context) => SecondScreen(),
        "/third": (context) => ThirdScreen()
      },
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
          child: Text("First Screen")),
    ));
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: OutlinedButton(onPressed: () {
        Navigator.pushNamed(context, "/third");
      }, child: Text("Second Screen")),
    ));
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: OutlinedButton(onPressed: () {}, child: Text("Third Screen")),
    ));
  }
}
