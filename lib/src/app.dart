// import helper library
import 'package:flutter/material.dart';
import './home.dart';

class App extends StatefulWidget {
  // add constructor
  const App({Key? key}) : super(key: key);

  // override createState
  @override
  AppState createState() => AppState();
}

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
