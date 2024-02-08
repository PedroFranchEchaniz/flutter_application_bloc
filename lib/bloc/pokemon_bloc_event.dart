part of 'pokemon_bloc_bloc.dart';

@immutable
sealed class PokemonBlocEvent {}

final class PokemonFetchEvent extends PokemonBlocEvent {}
