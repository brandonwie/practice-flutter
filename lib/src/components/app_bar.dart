import 'package:flutter/material.dart';

// app bar

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize {
    return const Size.fromHeight(50.0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Hot reload works!!'),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}
