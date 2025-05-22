import 'package:flutter/material.dart';
import 'package:pokedex/widget/appTitle.dart';
import 'package:pokedex/widget/pokemonList.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            apiTitle(),
            Expanded(child: pokemonList()),
          ],
        ),
      ),
    );
  }
}

