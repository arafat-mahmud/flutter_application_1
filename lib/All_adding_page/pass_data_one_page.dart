// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PassDataOnePage extends StatelessWidget {
  String sanon;
  PassDataOnePage({required this.sanon});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(sanon, style:  TextStyle(fontSize: 25),),
      ),
    );
  }
}
