// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  int counter = 0;

  loadcounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      counter = preferences.getInt('Counter') ?? 0;
    });
  }

  increment() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      counter++;
      preferences.setInt('Counter', counter);
    });
  }

  @override
  void initState() {
    loadcounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'You have pushed the button ',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextSpan(
                      text: '$counter',
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    TextSpan(
                      text: 'times',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Increment',
          onPressed: () {
            increment();
          },
          child: Icon(Icons.add),
        ));
  }
}
