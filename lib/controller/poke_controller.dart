import 'package:cubos_boy/interfaces/pokemon.dart';
import 'package:cubos_boy/model/poke_model.dart';

class PokeController {
  final model = PokeModel();

  int pokeNumber = 0;

  Future<Pokemon> get pokemon => model.pokemon;

  loadPokemon() {
    model.fetchPokemon(pokeNumber++);
  }
}
