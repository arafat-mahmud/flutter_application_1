// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final dynamic receivedata;

  const DetailsPage({required this.receivedata});
  // var receivedata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(receivedata["avatar"]),
        ), 
      ),
    );
  }
}
