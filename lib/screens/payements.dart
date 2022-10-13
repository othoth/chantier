import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class PayementsScreen extends StatelessWidget {
  const PayementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payements"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer1(),
      body: const SingleChildScrollView(),
    );
  }
}
