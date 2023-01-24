// import helper library
import 'package:flutter/material.dart';
import './home.dart';

// app level
class App extends StatelessWidget {
  const App({super.key});

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
