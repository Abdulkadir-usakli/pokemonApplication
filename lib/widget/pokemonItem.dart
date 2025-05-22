import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/pages/detailPage.dart';
import 'package:pokedex/sabit/sabitler.dart';
import 'package:pokedex/widget/pokemonImage.dart';

class pokemonItem extends StatelessWidget {
  final pokemonModel pokemon;
  // ignore: prefer_const_constructors_in_immutables
  pokemonItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => detailpage(pokemon: pokemon)));
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: sabitler.getColor(pokemon.type![0]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name!,
                style: sabitler.pokemonNameStyle(),
              ),
              Chip(
                label: Text(
                  pokemon.type![0],
                  style: sabitler.pokemonTypeStyle(),
                ),
              ),
              Expanded(
                  child: pokemonImage(
                pokemon: pokemon,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
