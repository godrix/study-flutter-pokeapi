import 'dart:convert';

import 'package:cubos_boy/interfaces/pokemon.dart';
import 'package:http/http.dart' as http;

class API {
  final baseUrl = 'pokeapi.co';

  Future<Pokemon> fetchPokeon(int id) async {
    final response = await http.get(Uri.https(baseUrl, '/api/v2/pokemon/$id'));
    if (response.statusCode == 200) {
      return Pokemon.fromJson(jsonDecode(response.body));
    } else {
      return Future.error('Ops...');
    }
  }
}
