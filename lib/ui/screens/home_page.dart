import 'package:cinetopia/ui/componets/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset("assets/logo.png"),
          Image.asset("assets/splash.png"),
          Text("O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"),
          PrimaryButton(),
        ],
      ),
    );
  }
}