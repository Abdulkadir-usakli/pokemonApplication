import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/sabit/sabitler.dart';

class pokemonName extends StatelessWidget {
  final pokemonModel pokemon;
  const pokemonName({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? ' ',
                  style: sabitler.pokemonNameStyle(),
                ),
              ),
              Text(
                '#${pokemon.num}',
                style: sabitler.pokemonTypeStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(label: Text(pokemon.type?.join(',') ?? ' '))
        ],
      ),
    );
  }
}
