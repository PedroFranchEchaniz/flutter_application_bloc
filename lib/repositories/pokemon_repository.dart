import 'package:flutter_application_bloc/models/pokemon_list_response.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> fetchPokemons();
}
