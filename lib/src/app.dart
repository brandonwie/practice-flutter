// import helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert' as convert;

import 'package:flutter_pics/src/models/image_model.dart';

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
  List<ImageModel> images = [];

  void fetchImage() async {
    setState(() => counter++);
    var url = Uri.https('jsonplaceholder.typicode.com', '/photos/$counter');
    var response = await get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonResponse);
      setState(() => images.add(ImageModel.fromJson(jsonResponse)));
    } else {
      throw Exception('Failed to load image at $counter');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey,
        ),
        home: Scaffold(
            body: ListView.builder(
              physics: const ClampingScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) {
                var url = images[index].url;
                if (url == null) return const Text('No image');
                return Image.network(url);
              },
            ),
            appBar: AppBar(
              title: const Text('Flutter Pics'),
              backgroundColor: Colors.blueGrey[900],
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: fetchImage,
                backgroundColor: Colors.pinkAccent,
                child: const Icon(Icons.add))));
  }
}

// https://jsonplaceholder.typicode.com