import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/common/cities.dart';
import '../constants.dart';

class CitiesProvider with ChangeNotifier{
  Cities _cities;
  Cities get cities => _cities;
  Future<void> fetchCities({String query, double lat, double long, int cityId}) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/cities?q=Ghaziabad&lat=0&lon=0&city_ids=1',//&count=10',
          headers: {
            'user-key': '$apiKey',
            'q' : '$query',
            'lat' : '$lat',
            'lon': '$long',
            'city_ids' : '$cityId'
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      Cities cities = Cities.fromJson(jsonData);
      _cities = cities;
print(_cities);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}