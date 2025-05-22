import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/servis/pokeApi.dart';
import 'package:pokedex/widget/pokemonItem.dart';

class pokemonList extends StatefulWidget {
   // ignore: prefer_const_constructors_in_immutables
   pokemonList({super.key});

  @override
  State<pokemonList> createState() => _pokemonListState();
}

class _pokemonListState extends State<pokemonList> {
  late Future<List<pokemonModel>> _pokemonlist;
  void initState() {
    super.initState();
    _pokemonlist = PokeApi.getApi();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<pokemonModel>>(
      future: _pokemonlist,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<pokemonModel> _listem = snapshot.data!;
          return GridView.builder(itemCount: _listem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
              itemBuilder: (context, index) {
                return pokemonItem(pokemon: _listem[index]);
              });
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('HATA ÇIKTI'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
