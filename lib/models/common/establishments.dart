class Establishments {
  List<Establishment> _establishment;

  Establishments({List<Establishment> establishments}) {
    this._establishment = establishments;
  }

  List<Establishment> get establishment => _establishment;
  set establishment(List<Establishment> establishment) =>
      _establishment = establishment;

  Establishments.fromJson(Map<String, dynamic> json) {
    if (json['establishments'] != null) {
      _establishment = new List<Establishment>();
      json['establishments'].forEach((v) {
        _establishment.add(new Establishment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._establishment != null) {
      data['establishments'] =
          this._establishment.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Establishment {
  int _id;
  String _name;

  Establishment({int id, String name}) {
    this._id = id;
    this._name = name;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;

  Establishment.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}