// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.green),
            ),
            Expanded(
              flex: 1,
              child: Container(color: Colors.red),
            ),
            Expanded(
              flex: 1,
              child: Container(color: Colors.yellow),
            ),
          ],
        ),
      ),
    );
  }
}