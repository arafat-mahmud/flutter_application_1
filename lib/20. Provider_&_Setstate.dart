// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/All_adding_page/data.dart';
import 'package:flutter_application_1/17.%20Tab_Bar.dart';

import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => Data(),
    
    child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Providerdata = Provider.of<Data>(context);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Providerdata.value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
              onPressed: () {
                Providerdata.Increment();
              },
              child: Text('Tap'),
            )
          ],
        ),
      ),
    ));
  }
}






// // Set State 
// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/17.%20Tab_Bar.dart';

// import 'package:provider/provider.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int value = 0;
//   Increment() {
//     setState(() {
//       value++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               value.toString(),
//               style: TextStyle(fontSize: 50),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Increment();
//               },
//               child: Text('Tap'),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }