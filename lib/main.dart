// I need to import a helper library
// from flutter to get content on the screen
import 'package:flutter/material.dart';

// Define a 'main' function to run when our app starts
void main() {
// Create a new text widget to show some text on the screen
  const app = MaterialApp(home: Text('Hi My App! insnace manace'));
// Take that widget and get it on the screen

  runApp(app);
}

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Hot reload works let saldk!!')),
//       ),
//     );
//   }
// }
