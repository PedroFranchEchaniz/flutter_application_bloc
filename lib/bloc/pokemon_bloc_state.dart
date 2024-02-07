part of 'pokemon_bloc_bloc.dart';

@immutable
sealed class PokemonBlocState {}

final class PokemonBlocInitial extends PokemonBlocState {}

final class PokemonBlockLoading extends PokemonBlocBloc {}

final class PokemonblockFetched extends PokemonBlocBloc {}
