import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon.dart';


class pokemonInfo extends StatelessWidget {
  final pokemonModel pokemon;
  const pokemonInfo({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            rowInfarmation('Name', pokemon.name),
            rowInfarmation('Height', pokemon.height),
            rowInfarmation('Weight', pokemon.weight),
            rowInfarmation('Spawn Time', pokemon.spawnTime),
            rowInfarmation('Weakness', pokemon.weaknesses),
            rowInfarmation('Pre Evolution', pokemon.prevEvolution),
            rowInfarmation('Next Evolution', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  rowInfarmation(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label,style:TextStyle(fontSize: 20)),
        if (value is List && value.isNotEmpty)
          Text(value.join(','),style: TextStyle(fontSize: 18))
        else if (value == null)
          Text('Not available',style: TextStyle(fontSize: 20))
        else
          Text(value,style: TextStyle(fontSize: 20))
      ],
    );
  }
}
