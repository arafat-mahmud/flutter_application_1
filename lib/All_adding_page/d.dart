// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class D extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page D'),
      ),
      body: Center(
        child: Text('This is Page D', style: TextStyle(fontSize: 24)),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
