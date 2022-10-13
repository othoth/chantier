import 'package:chantiers/screens/authentication.dart';
import 'package:chantiers/screens/payements.dart';
import 'package:chantiers/screens/settings.dart';
import 'package:chantiers/screens/workers.dart';
import 'package:flutter/material.dart';

import '../screens/chantiers.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 0,
        child: ListView(
          children: [
            const SizedBox(height: 100,),
            ListTile(leading: const Icon(Icons.home), title: const Text("Chantiers"),onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChantiersListe()),
            );},),
            ListTile(leading: const Icon(Icons.person), title: const Text("Workers"),onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WorkersScreen()),
            );},),
            ListTile(leading: const Icon(Icons.monetization_on), title: const Text("Payements"),onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PayementsScreen()),
            );},),
            ListTile(leading: const Icon(Icons.settings), title: const Text("Parametres"),onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsScreen()),
            );},),
            ListTile(leading: const Icon(Icons.login), title: const Text("Deconexion"),onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Authentication()),
            );},),
          ],
        ));
  }
}