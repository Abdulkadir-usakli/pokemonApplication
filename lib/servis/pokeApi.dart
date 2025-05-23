import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex/model/pokemon.dart';

class PokeApi {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<pokemonModel>> getApi() async {
    List<pokemonModel> _list = [];

    var result = await Dio().get(_url);
    var pokeList = jsonDecode(result.data)['pokemon'];

    if (pokeList is List) {
      _list = pokeList.map((e) => pokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }

    return _list;
  }
}
