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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ads_click),
          onPressed: () {
            setState(() {
              _value = !_value;
            });
          },
        ),
        body: Center(
            child: AnimatedContainer(
          height: _value == false ? 150 : 350,
          width: _value == false ? 150 : 350,
          color: Color.fromARGB(255, 255, 0, 0),
          alignment: Alignment.center,
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 2),
          child: LayoutBuilder(
            builder: (context, constraints) {
              double fontSize = constraints.maxWidth * 0.15;
              return Text(
                'Hello World',
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              );
            },
          ),
        )));
  }
}
