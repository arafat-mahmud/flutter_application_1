// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              backgroundColor: Color.fromARGB(255, 255, 13, 0),
              flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: 16, bottom: 10),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'My application',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      // Text(
                      //   'this is details',
                      //   style: TextStyle(
                      //   fontSize: 11,
                      //   fontWeight: FontWeight.normal,
                      // ),
                      // ),
                    ],
                  )),
            ),
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              addDetails("One", "This is one"),
              addDetails("Two", "This is two"),
              addDetails("Three", "This is three"),
              addDetails("Four", "This is four"),
              addDetails("Five", "This is five"),
              addDetails("Six", "This is six"),
              addDetails("Seven", "This is seven"),
              addDetails("Eight", "This is eight"),
              addDetails("Nine", "This is nine"),
              addDetails("Ten", "This is ten"),
              addDetails("Eleven", "This is eleven"),
              addDetails("Twelve", "This is twelve"),
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addDetails(
  String name,
  String description,
) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
