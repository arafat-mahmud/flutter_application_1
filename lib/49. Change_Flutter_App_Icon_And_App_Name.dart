// pubspece.yaml

// # 49. Change_Flutter_App_Icon_And_App_Name.dart

// ======== For name change ======

//   flutter_launcher_icons: ^0.13.1
// flutter_icons:
//   android: true
//   ios: true
//   image_path: "images/launcher_icons.png"

// =========  For icon change ======

// android -> app -> src -> main -> AndroidManifest.xml -> android:label="My first app"

// ====================================================
// ====================================================
// ====================================================

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Hi",
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    ));
  }
}
