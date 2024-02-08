import 'dart:html';
import 'dart:convert';
import 'package:http/http.dart';

import 'package:flutter_application_bloc/models/pokemon_list_response.dart';
import 'package:flutter_application_bloc/repositories/pokemon_repository.dart';

class PokemonRepositoyImpl extends PokemonRepository {
  final Client _client = Client();
  @override
  Future<List<Pokemon>> fetchPokemons() async {
    final response =
        await _client.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));
    if (response.statusCode == 200) {
      return PokemonListResponse.fromJson(json.decode(response.body)).results!;
    } else {
      throw Exception('Fail to load pokemons');
    }
  }
}
