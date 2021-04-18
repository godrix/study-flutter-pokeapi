import 'dart:math';

import 'package:cubos_boy/interfaces/pokemon.dart';
import 'package:cubos_boy/model/poke_model.dart';

class PokeController {
  final model = PokeModel();

  int pokeNumber = 0;

  Future<Pokemon> get pokemon => model.pokemon;

  loadPokemon() {}

  previusPokemon() {
    if (pokeNumber > 1) {
      pokeNumber--;
      model.fetchPokemon(pokeNumber);
    }
  }

  nextPokemon() {
    pokeNumber++;
    model.fetchPokemon(pokeNumber);
  }

  randomPokemon() {
    pokeNumber = Random().nextInt(1000);
    model.fetchPokemon(pokeNumber);
  }

  resetpokemon() {
    pokeNumber = 1;
    model.fetchPokemon(pokeNumber);
  }
}
