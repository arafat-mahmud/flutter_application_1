// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final pages = [
      Container(color: Colors.amber,),
      Container(color: Colors.red,),
      Container(color: Color.fromARGB(255, 0, 255, 251),),
      Container(color: const Color.fromARGB(255, 255, 135, 7),),
      ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(pages: pages),
      ),
    );
  }
}