import 'package:cubos_boy/interfaces/pokemon.dart';
import 'package:cubos_boy/services/api.dart';

class PokeModel {
  Future<Pokemon> _pokemon;

  Future<Pokemon> get pokemon => _pokemon;

  fetchPokemon(int pokeId) {
    _pokemon = API().fetchPokeon(pokeId);
  }
}
