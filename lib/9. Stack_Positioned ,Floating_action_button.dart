// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,

            //overflow: Overflow.visible, (old method)
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
