import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/location/location.dart';
import '../constants.dart';

class LocationProvider with ChangeNotifier{
Location _location;
Future<void> fetchCouisines({String query, double lat, double long}) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/locations?',//&count=10',
          headers: {
            'user-key': '$apiKey',
            'query' : '$query',
            'lat' : '$lat',
            'lon': '$long',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      Location location = Location.fromJson(jsonData);
      _location = location;
      print(_location);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}