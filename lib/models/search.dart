import 'package:zomato/models/restaurants/restaurant.dart';

class Search {
  int _resultsFound;
  int _resultsStart;
  int _resultsShown;
  List<Restaurants> _restaurants;

  Search(
      {int resultsFound,
        int resultsStart,
        int resultsShown,
        List<Restaurants> restaurants}) {
    this._resultsFound = resultsFound;
    this._resultsStart = resultsStart;
    this._resultsShown = resultsShown;
    this._restaurants = restaurants;
  }

  int get resultsFound => _resultsFound;
  set resultsFound(int resultsFound) => _resultsFound = resultsFound;
  int get resultsStart => _resultsStart;
  set resultsStart(int resultsStart) => _resultsStart = resultsStart;
  int get resultsShown => _resultsShown;
  set resultsShown(int resultsShown) => _resultsShown = resultsShown;
  List<Restaurants> get restaurants => _restaurants;
  set restaurants(List<Restaurants> restaurants) => _restaurants = restaurants;

  Search.fromJson(Map<String, dynamic> json) {
    _resultsFound = json['results_found'];
    _resultsStart = json['results_start'];
    _resultsShown = json['results_shown'];
    if (json['restaurants'] != null) {
      _restaurants = new List<Restaurants>();
      json['restaurants'].forEach((v) {
        _restaurants.add(new Restaurants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['results_found'] = this._resultsFound;
    data['results_start'] = this._resultsStart;
    data['results_shown'] = this._resultsShown;
    if (this._restaurants != null) {
      data['restaurants'] = this._restaurants.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Restaurants {
  Restaurant _restaurant;

  Restaurants({Restaurant restaurant}) {
    this._restaurant = restaurant;
  }

  Restaurant get restaurant => _restaurant;
  set restaurant(Restaurant restaurant) => _restaurant = restaurant;

  Restaurants.fromJson(Map<String, dynamic> json) {
    _restaurant = json['restaurant'] != null
        ? new Restaurant.fromJson(json['restaurant'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._restaurant != null) {
      data['restaurant'] = this._restaurant.toJson();
    }
    return data;
  }
}