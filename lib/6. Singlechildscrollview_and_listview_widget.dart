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
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: 150,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 250,
                    width: 150,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    height: 250,
                    width: 150,
                    color: Colors.deepOrange,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
