// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class E extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page E'),
      ),
      body: Center(
        child: Text('This is Page E', style: TextStyle(fontSize: 24)),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
