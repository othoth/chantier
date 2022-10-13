import 'package:chantiers/consts.dart';
import 'package:chantiers/screens/chantiers.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final TextEditingController _mdpConstroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Mot de passe de l'utilisateur: "),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: _mdpConstroller,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_mdpConstroller.text == motDePasse) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ChantiersListe()),
                      );
                    } else {
                      showDialog(context: context, builder: (context)=>AlertDialog(
                        title: const Text("Mot de passe incorrecte"),
                        content: const Text("vouliez reessayer"),
                        actions: [
                          TextButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("Ok"))
                        ],
                      ));

                    }
                  },
                  child: const Text("Continuer"))
            ],
          ),
        ),
      ),
    );
  }
}
