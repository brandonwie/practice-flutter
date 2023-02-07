// import helper library
import 'package:flutter/material.dart';
import './home.dart';

class App extends StatefulWidget {}

// app level
class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home: const Home(),
    );
  }
}
