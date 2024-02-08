import 'package:bloc/bloc.dart';
import 'package:flutter_application_bloc/models/pokemon_list_response.dart';
import 'package:flutter_application_bloc/repositories/pokemon_repository.dart';
import 'package:meta/meta.dart';

part 'pokemon_bloc_event.dart';
part 'pokemon_bloc_state.dart';

class PokemonBlocBloc extends Bloc<PokemonBlocEvent, PokemonBlocState> {

  final PokemonRepository pokemonRepository;

  PokemonBlocBloc(this.pokemonRepository): super(PokemonBlocInitial()){
    on<PokemonFetchEvent>(_onPokemonFetch);
  }

  void _onPokemonFetch(
    PokemonFetchEvent event, Emitter<PokemonBlocState> emit)async{
      try{
        final pokemonList = await pokemonRepository.fetchPokemons();
        emit(PokemonblockFetched(pokemonList)); //se capturan estados
        return;

      }on Exception catch(e){
        emit(PokemonblocFetchError(e.toString()));
      }
    }
  )
}
