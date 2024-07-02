// dependencies:
//   introduction_screen: ^3.1.14

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:flutter_application_1/20.%20Provider_&_Setstate.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'First',
          body: 'This is the first page',
          image: Image.asset('images/ss3.png', width: 350,),
        ),
        PageViewModel(
          title: 'Two',
          body: 'This is the Two page',
          image: Image.asset('images/ss2.png', width: 350,),
        ),
        PageViewModel(
          title: 'Three',
          body: 'This is the Three page',
          image: Image.asset('images/ss1.png', width: 350,),
        ),
      ],
      onDone: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=> HomePage()));
      },
      done: Text('Done'),
      showSkipButton: true,
      skip: Text('Skip'),
      next: Icon(Icons.arrow_forward),  // Added next button
      showNextButton: true,

    );
  }
}
