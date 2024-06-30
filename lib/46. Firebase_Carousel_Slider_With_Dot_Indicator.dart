// cloud_firestore:
//flutter_carousel_slider:

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';



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
  Future getimageFromFirebase() async {
    var firestore = FirebaseFirestore.instance;
    QuerySnapshot qn = await firestore.collection("Carousel_images").get();
    return qn.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getimageFromFirebase(),
        builder: (_, snapshot){
          return CarouselSlider.builder(
            slideBuilder: (index){
              DocumentSnapshot sliderimage = snapshot.data[index];
              return Container(

                child: Image.network(sliderimage['img']),
              );
            },
            slideTransform: CubeTransform(
              rotationAngle: 0,
            ),
            slideIndicator: CircularSlideIndicator(
              indicatorBackgroundColor: Colors.red,
              currentIndicatorColor: Colors.green,
            ),
            itemCount: snapshot.data.length);
        },
      ));
  }
}
