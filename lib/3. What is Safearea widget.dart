import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Text(
            "I love BD", 
          style: TextStyle(fontSize: 25,)),
          backgroundColor: Color.fromARGB(255, 255, 211, 182)
        )
      ),
    );
  }
}
