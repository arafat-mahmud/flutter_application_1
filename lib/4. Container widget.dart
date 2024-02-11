import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 200,
            width: 300,
            decoration: const BoxDecoration(color: Colors.amber,),
            child: const Text(
              "Container widget",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
      ),
      )
    );
  }
}
