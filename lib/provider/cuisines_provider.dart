import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/common/cuisines.dart';
import '../constants.dart';

class CuisinesProvider with ChangeNotifier{
  Cuisines _cuisines;
  Future<void> fetchCouisines({double lat, double long, int cityId}) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/cuisines?',//&count=10',
          headers: {
            'user-key': '$apiKey',
            'lat' : '$lat',
            'lon': '$long',
            'city_id' : '$cityId',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      Cuisines cuisines = Cuisines.fromJson(jsonData);
      _cuisines =cuisines;
      print(_cuisines);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}