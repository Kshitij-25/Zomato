class Cuisines {
  List<Cuisine> _cuisine;

  Cuisines({List<Cuisine> cuisine}) {
    this._cuisine = cuisine;
  }

  List<Cuisine> get cuisines => _cuisine;
  // ignore: unnecessary_getters_setters
  set cuisines(List<Cuisine> cuisine) => _cuisine = cuisine;

  Cuisines.fromJson(Map<String, dynamic> json) {
    if (json['cuisines'] != null) {
      _cuisine = new List<Cuisine>();
      json['cuisines'].forEach((v) {
        _cuisine.add(new Cuisine.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._cuisine != null) {
      data['cuisines'] = this._cuisine.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cuisine {
  int _cuisineId;
  String _cuisineName;

  Cuisine({int cuisineId, String cuisineName}) {
    this._cuisineId = cuisineId;
    this._cuisineName = cuisineName;
  }

  int get cuisineId => _cuisineId;
  set cuisineId(int cuisineId) => _cuisineId = cuisineId;
  String get cuisineName => _cuisineName;
  set cuisineName(String cuisineName) => _cuisineName = cuisineName;

  Cuisine.fromJson(Map<String, dynamic> json) {
    _cuisineId = json['cuisine_id'];
    _cuisineName = json['cuisine_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cuisine_id'] = this._cuisineId;
    data['cuisine_name'] = this._cuisineName;
    return data;
  }
}