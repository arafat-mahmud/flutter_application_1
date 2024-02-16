import 'package:flutter/material.dart';
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Image.asset("images/ss.png")
          ),
      ),
    );
  }
}