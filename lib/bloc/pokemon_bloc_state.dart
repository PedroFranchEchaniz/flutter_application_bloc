part of 'pokemon_bloc_bloc.dart';

@immutable
sealed class PokemonBlocState {
  final List<Pokemon> pokemons;

  const PokemonBlocState({
    this.pokemons = const <Pokemon>[],
  });
}

final class PokemonBlocInitial extends PokemonBlocState {}

final class PokemonblockFetched extends PokemonBlocState {
  final List<Pokemon> pokemonList;
  const PokemonblockFetched(this.pokemonList);
}

final class PokemonblocFetchError extends PokemonBlocState {
  final String messageError;
  const PokemonblocFetchError(this.messageError);
}
