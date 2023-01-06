import 'package:pokedex/model/pokemon.model.dart';
import 'package:pokedex/service/pokedex.service.dart';

class PokemonViewModel {
  static Future<PokemonModel> listPokemon() async {
    return PokedexService().listPokemon();
  }
}
