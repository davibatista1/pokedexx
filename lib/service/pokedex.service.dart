import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokedex/model/pokemon.model.dart';

class PokedexService {
  Future<PokemonModel> listPokemon() async {
    final Response response =
        await Modular.get<Dio>().get("https://pokeapi.co/api/v2/pokemon");
    return PokemonModel.fromJson(response.data);
  }
}
