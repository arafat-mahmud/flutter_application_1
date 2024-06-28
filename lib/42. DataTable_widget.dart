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
      appBar: AppBar(
        title: Text('Data Table Widget'),
      ),
      body: Center(
        child: DataTable(columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Age')),
          DataColumn(label: Text('Gender')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text('<NAME>')),
            DataCell(Text('25')),
            DataCell(Text('Male')),
          ]),
          DataRow(cells: [
            DataCell(Text('<NAME>')),
            DataCell(Text('30')),
            DataCell(Text('Female')),
          ]),
          DataRow(cells: [
            DataCell(Text('<NAME>')),
            DataCell(Text('35')),
            DataCell(Text('Male')),
          ]),
          DataRow(cells: [
            DataCell(Text('<NAME>')),
            DataCell(Text('40')),
            DataCell(Text('Female')),
          ]),
          DataRow(cells: [
            DataCell(Text('<NAME>')),
            DataCell(Text('45')),
            DataCell(Text('Male')),
          ]),
        ])
      )
    );
  }
}