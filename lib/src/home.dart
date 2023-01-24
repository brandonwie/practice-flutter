import 'package:flutter/material.dart';

import './components/app_bar.dart';
import 'components/floating_action_button.dart';

// home route level
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      floatingActionButton: Fab(),
    );
  }
}
