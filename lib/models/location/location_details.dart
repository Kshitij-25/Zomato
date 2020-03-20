import 'package:zomato/models/restaurants/restaurant.dart';

import 'location.dart';

class LocationDetails {
  String _popularity;
  List<String> _nearbyRes;
  List<String> _topCuisines;
  String _subzone;
  String _city;
  Location _location;
  List<BestRatedRestaurant> _bestRatedRestaurant;

  LocationDetails(
      {String popularity,
        List<String> nearbyRes,
        List<String> topCuisines,
        String subzone,
        String city,
        Location location,
        List<BestRatedRestaurant> bestRatedRestaurant}) {
    this._popularity = popularity;
    this._nearbyRes = nearbyRes;
    this._topCuisines = topCuisines;
    this._subzone = subzone;
    this._city = city;
    this._location = location;
     this._bestRatedRestaurant = bestRatedRestaurant;
  }

  String get popularity => _popularity;
  set popularity(String popularity) => _popularity = popularity;
 List<String> get nearbyRes => _nearbyRes;
  set nearbyRes(List<String> nearbyRes) => _nearbyRes = nearbyRes;
  List<String> get topCuisines => _topCuisines;
  set topCuisines(List<String> topCuisines) => _topCuisines = topCuisines;
 String get subzone => _subzone;
  set subzone(String subzone) => _subzone = subzone;
  String get city => _city;
  set city(String city) => _city = city;
  Location get location => _location;
  set location(Location location) => _location = location;
  List<BestRatedRestaurant> get bestRatedRestaurant => _bestRatedRestaurant;
  set bestRatedRestaurant(List<BestRatedRestaurant> bestRatedRestaurant) =>
      _bestRatedRestaurant = bestRatedRestaurant;

  LocationDetails.fromJson(Map<String, dynamic> json) {
    _popularity = json['popularity'];
    _nearbyRes = json['nearby_res'].cast<String>();
    _topCuisines = json['top_cuisines'].cast<String>();
    _subzone = json['subzone'];
    _city = json['city'];
    _location = json['location'] != null
        ? Location.fromJson(json['location'])
        : null;
    if (json['best_rated_restaurant'] != null) {
      _bestRatedRestaurant = new List<BestRatedRestaurant>();
      json['best_rated_restaurant'].forEach((v) {
        _bestRatedRestaurant.add(new BestRatedRestaurant.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this._popularity;
    data['nearby_res'] = this._nearbyRes;
    data['top_cuisines'] = this._topCuisines;
    data['subzone'] = this._subzone;
    data['city'] = this._city;
    if (this._location != null) {
      data['location'] = this._location.toJson();
    }
    if (this._bestRatedRestaurant != null) {
      data['best_rated_restaurant'] =
          this._bestRatedRestaurant.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class BestRatedRestaurant {
  Restaurant _restaurant;

  BestRatedRestaurant({Restaurant restaurant}) {
    this._restaurant = restaurant;
  }

  Restaurant get restaurant => _restaurant;
  set restaurant(Restaurant restaurant) => _restaurant = restaurant;

  BestRatedRestaurant.fromJson(Map<String, dynamic> json) {
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

class RestaurantLocation {
  String _address;
  String _locality;
  String _city;
  int _cityId;
  String _latitude;
  String _longitude;
  String _zipcode;
  String _localityVerbose;

  RestaurantLocation(
      {String address,
        String locality,
        String city,
        int cityId,
        String latitude,
        String longitude,
        String zipcode,
        String localityVerbose}) {
    this._address = address;
    this._locality = locality;
    this._city = city;
    this._cityId = cityId;
    this._latitude = latitude;
    this._longitude = longitude;
    this._zipcode = zipcode;
    this._localityVerbose = localityVerbose;
  }

  String get address => _address;
  set address(String address) => _address = address;
  String get locality => _locality;
  set locality(String locality) => _locality = locality;
  String get city => _city;
  set city(String city) => _city = city;
  int get cityId => _cityId;
  set cityId(int cityId) => _cityId = cityId;
  String get latitude => _latitude;
  set latitude(String latitude) => _latitude = latitude;
  String get longitude => _longitude;
  set longitude(String longitude) => _longitude = longitude;
  String get zipcode => _zipcode;
  set zipcode(String zipcode) => _zipcode = zipcode;
  String get localityVerbose => _localityVerbose;
  set localityVerbose(String localityVerbose) =>
      _localityVerbose = localityVerbose;

  RestaurantLocation.fromJson(Map<String, dynamic> json) {
    _address = json['address'];
    _locality = json['locality'];
    _city = json['city'];
    _cityId = json['city_id'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _zipcode = json['zipcode'];
    _localityVerbose = json['locality_verbose'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this._address;
    data['locality'] = this._locality;
    data['city'] = this._city;
    data['city_id'] = this._cityId;
    data['latitude'] = this._latitude;
    data['longitude'] = this._longitude;
    data['zipcode'] = this._zipcode;
    data['locality_verbose'] = this._localityVerbose;
    return data;
  }
}
