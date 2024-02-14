import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: ListView(
          children: const[
            ListTile(
              title: Text("Easy Explain"),
              subtitle: Text("This is my first flutter Project"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo ),
            ),
            ListTile(
              title: Text("Easy Explain"),
              subtitle: Text("This is my first flutter Project"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo ),
            ),
            ListTile(
              title: Text("Easy Explain"),
              subtitle: Text("This is my first flutter Project"),
              leading: CircleAvatar(child: Icon(Icons.message),),
              trailing: Icon(Icons.add_a_photo ),
            ),
          ],
        ),
      ),
    );
  }
}
