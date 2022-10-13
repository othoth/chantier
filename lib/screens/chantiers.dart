import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class ChantiersListe extends StatefulWidget {
  const ChantiersListe({Key? key}) : super(key: key);

  @override
  State<ChantiersListe> createState() => _ChantiersListeState();
}

class _ChantiersListeState extends State<ChantiersListe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chantiers"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer1(),
      body: const SingleChildScrollView(),
    );
  }
}


