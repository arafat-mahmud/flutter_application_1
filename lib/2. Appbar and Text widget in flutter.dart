import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        //Appbar
        appBar: AppBar(
          title: const Text("Home page"),
          centerTitle: true,
          leading: const Icon(Icons.message),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.add_a_photo), onPressed: (){})
          ],
          elevation: 5, // Set the desired elevation value
          backgroundColor: const Color.fromARGB(255, 255, 211, 182),
          ),
        
        //Text widget
        body: const Center(
          child: Text("This is my first app", 
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color.fromARGB(255, 255, 0, 0), ),),
        ),
      ),
      );
  }
}

