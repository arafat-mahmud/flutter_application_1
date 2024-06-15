// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/All_adding_page/data.dart';

class  ReceiveState extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final Providerdata = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Text(Providerdata.value.toString(), style: TextStyle(fontSize: 50),),
    ),);
  }
}