class Pokemon {
  String name;
  String imgUrl;

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    imgUrl = json['sprites']['front_default'];
  }
}
