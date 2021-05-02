class Pokemon {
  String name;
  String imgUrl;
  List<Ability> abilities;

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imgUrl = json['sprites']['front_default'];

    var arrayAbilities = json['abilities'] as List;

    abilities = arrayAbilities.map((item) {
      return Ability.fromJson(item['ability']);
    }).toList();
  }
}

class Ability {
  String name;
  String url;

  Ability.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}
