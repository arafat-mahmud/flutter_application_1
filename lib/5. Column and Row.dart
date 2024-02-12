import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Row"),
            elevation: 5,
            backgroundColor: const Color.fromARGB(255, 65, 166, 233),
            ),
            body: Row(
              children: <Widget>[
                Container(
                height: 200,
                width: 150,
                color: Colors.deepOrange,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.deepOrange,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
