// import helper library
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // add constructor
  const MyApp({super.key});

  // override createState
  @override
  State<MyApp> createState() => _MyAppState();
}

// app level
class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey,
        ),
        home: Scaffold(
            body: Text('$counter'),
            appBar: AppBar(
              title: const Text('Hot reload works!'),
              backgroundColor: Colors.blueGrey[900],
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  this.counter += 1;
                },
                backgroundColor: Colors.greenAccent[400],
                child: const Icon(Icons.add))));
  }
}

// https://jsonplaceholder.typicode.com