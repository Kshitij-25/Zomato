import 'package:zomato/models/location/location.dart';

class Cities {
  List<LocationSuggestions> _locationSuggestions;
  bool _userHasAddresses;

  Cities(
      {List<LocationSuggestions> locationSuggestions,
        bool userHasAddresses}) {
    this._locationSuggestions = locationSuggestions;
   /* this._status = status;
    this._hasMore = hasMore;
    this._hasTotal = hasTotal;*/
    this._userHasAddresses = userHasAddresses;
  }

  List<LocationSuggestions> get locationSuggestions => _locationSuggestions;
  set locationSuggestions(List<LocationSuggestions> locationSuggestions) =>
      _locationSuggestions = locationSuggestions;
 bool get userHasAddresses => _userHasAddresses;
  set userHasAddresses(bool userHasAddresses) =>
      _userHasAddresses = userHasAddresses;

  Cities.fromJson(Map<String, dynamic> json) {
    if (json['location_suggestions'] != null) {
      _locationSuggestions = List<LocationSuggestions>();
      json['location_suggestions'].forEach((v) {
        _locationSuggestions.add(LocationSuggestions.fromJson(v));
      });
    }
     _userHasAddresses = json['user_has_addresses'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._locationSuggestions != null) {
      data['location_suggestions'] =
          this._locationSuggestions.map((v) => v.toJson()).toList();
    }
   data['user_has_addresses'] = this._userHasAddresses;
    return data;
  }
}