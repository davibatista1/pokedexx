import 'package:pokedex/model/result.model.dart';

class PokemonModel {
  PokemonModel({
    this.count,
    this.next,
    this.previous,
    this.result,
  });

  //O número total de pokemons disponíveis
  int? count;

  // A URL da próxima página na lista.
  String? next;

  // A URL da página anterior na lista.
  String? previous;

  // Uma lista de pokemons nomeados.
  ResultModel? result;

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        result: ResultModel.fromJson(json["result"]));
  }
}
