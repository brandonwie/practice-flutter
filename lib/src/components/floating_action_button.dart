import 'package:flutter/material.dart';

// floating button
class Fab extends StatelessWidget {
  const Fab({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          print('Hi there');
        },
        backgroundColor: Colors.greenAccent[400],
        child: const Icon(Icons.add));
  }
}
