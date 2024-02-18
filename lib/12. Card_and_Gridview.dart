import 'package:flutter/material.dart';
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

// Card
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
//           child: Card(
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//                 borderRadius:
//                     BorderRadius.only(bottomLeft: Radius.circular(30))),
//             child: SizedBox(
//               height: 200,
//               width: 200,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Close Card


// Gridview
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
// Close Gridview