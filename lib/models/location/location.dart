class Location {
  List<LocationSuggestions> _locationSuggestions;
  String _status;
  bool _userHasAddresses;

  Location(
      {List<LocationSuggestions> locationSuggestions,
        String status,
        int hasMore,
        int hasTotal,
        bool userHasAddresses}) {
    this._locationSuggestions = locationSuggestions;
    this._status = status;
    this._userHasAddresses = userHasAddresses;
  }

  List<LocationSuggestions> get locationSuggestions => _locationSuggestions;
  set locationSuggestions(List<LocationSuggestions> locationSuggestions) =>
      _locationSuggestions = locationSuggestions;
  String get status => _status;
  set status(String status) => _status = status;
  bool get userHasAddresses => _userHasAddresses;
  set userHasAddresses(bool userHasAddresses) =>
      _userHasAddresses = userHasAddresses;

  Location.fromJson(Map<String, dynamic> json) {
    if (json['location_suggestions'] != null) {
      _locationSuggestions = new List<LocationSuggestions>();
      json['location_suggestions'].forEach((v) {
        _locationSuggestions.add(new LocationSuggestions.fromJson(v));
      });
    }
    _status = json['status'];
    _userHasAddresses = json['user_has_addresses'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._locationSuggestions != null) {
      data['location_suggestions'] =
          this._locationSuggestions.map((v) => v.toJson()).toList();
    }
    data['status'] = this._status;
    data['user_has_addresses'] = this._userHasAddresses;
    return data;
  }
}

class LocationSuggestions {
  String _entityType;
  int _entityId;
  String _title;
  double _latitude;
  double _longitude;
  int _cityId;
  String _cityName;
  String _countryName;

  LocationSuggestions(
      {String entityType,
        int entityId,
        String title,
        double latitude,
        double longitude,
        int cityId,
        String cityName,
        String countryName}) {
    this._entityType = entityType;
    this._entityId = entityId;
    this._title = title;
    this._latitude = latitude;
    this._longitude = longitude;
    this._cityId = cityId;
    this._cityName = cityName;
    this._countryName = countryName;
  }

  String get entityType => _entityType;
  set entityType(String entityType) => _entityType = entityType;
  int get entityId => _entityId;
  set entityId(int entityId) => _entityId = entityId;
  String get title => _title;
  set title(String title) => _title = title;
  double get latitude => _latitude;
  set latitude(double latitude) => _latitude = latitude;
  double get longitude => _longitude;
  set longitude(double longitude) => _longitude = longitude;
  int get cityId => _cityId;
  set cityId(int cityId) => _cityId = cityId;
  String get cityName => _cityName;
  set cityName(String cityName) => _cityName = cityName;
  String get countryName => _countryName;
  set countryName(String countryName) => _countryName = countryName;

  LocationSuggestions.fromJson(Map<String, dynamic> json) {
    _entityType = json['entity_type'];
    _entityId = json['entity_id'];
    _title = json['title'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _cityId = json['city_id'];
    _cityName = json['city_name'];
    _countryName = json['country_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['entity_type'] = this._entityType;
    data['entity_id'] = this._entityId;
    data['title'] = this._title;
    data['latitude'] = this._latitude;
    data['longitude'] = this._longitude;
    data['city_id'] = this._cityId;
    data['city_name'] = this._cityName;
    data['country_name'] = this._countryName;
    return data;
  }
}