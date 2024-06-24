// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors,
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
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: Container(
                height: 200,
                color: Colors.red,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        check = false;
                      });
                    },
                    child: Text('Click'),
                  ),
                ),
              ),
              secondChild: SizedBox(
                height: 300,
                child: Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 59),
                  ),
                ),
              ),
              crossFadeState:
                  check ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
          ],
        ),
      ),
    );
  }
}
