import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/sabit/sabitler.dart';

class pokemonImage extends StatelessWidget {
  final pokemonModel pokemon;
  const pokemonImage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'assets/images/pokeball.png',
            width: sabitler.pokemonImageStyle(),
            height: sabitler.pokemonImageStyle(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? ' ',
              width: sabitler.pokemonImageStyle(),
              height: sabitler.pokemonImageStyle(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
