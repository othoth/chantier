import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pmetres"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer1(),
      body: const SingleChildScrollView(),
    );
  }
}
