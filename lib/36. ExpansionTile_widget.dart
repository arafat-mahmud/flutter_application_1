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
          title: const Text('Material App'),
        ),
        body: MyHomePage(),
      ),
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
        body: Column(
      children: <Widget>[
        ExpansionTile(
          title: Text('One'),
          subtitle: Text('This is one'),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.arrow_downward),
          children: <Widget>[
            Container(
              height: 50,
              color: Color.fromARGB(237, 255, 249, 249),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.accessibility),
                  Icon(Icons.cloud),
                  Icon(Icons.event),
                  Icon(Icons.cake),
                ],
              ),
            )
          ],
        ),
        ExpansionTile(
          title: Text('Two'),
          subtitle: Text('This is two'),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.arrow_downward),
          children: <Widget>[
            Container(
              height: 50,
              color: Color.fromARGB(237, 255, 249, 249),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.accessibility),
                  Icon(Icons.cloud),
                  Icon(Icons.event),
                  Icon(Icons.cake),
                ],
              ),
            )
          ],
        ),
        ExpansionTile(
          title: Text('Three'),
          subtitle: Text('This is three'),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.arrow_downward),
          children: <Widget>[
            Container(
              height: 50,
              color: Color.fromARGB(237, 255, 249, 249),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.accessibility),
                  Icon(Icons.cloud),
                  Icon(Icons.event),
                  Icon(Icons.cake),
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
