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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SizedBox(
                    height: 250,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is One"),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text("Two"),
                          subtitle: Text("This is Two"),
                          trailing: Icon(Icons.access_alarm),
                        ),
                        ListTile(
                          title: Text("Three"),
                          subtitle: Text("This is Three"),
                          trailing: Icon(Icons.access_alarm),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text('Click me'),
        ),
      ),
    );
  }
}
