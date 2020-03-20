import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as Http;
import 'package:zomato/constants.dart';
import 'package:zomato/models/common/geocode.dart';
import 'package:zomato/models/common/sample.dart';

class GeoCodeProvider with ChangeNotifier {
  GeoCode _geoCode;
  GeoCode get geocode {
    return _geoCode;
  }


  Future<void> fetchGeoCode() async {
    try {
      Sample location = Sample();
      await location.getCurrentLocation();
      var latitude = location.latitude;
      var longitude = location.longitude;
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/geocode?lat=$latitude&lon=$longitude',
          headers: {
            'user-key': '$apiKey',
            'latitude': '$latitude',
            'longitude': '$longitude',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      GeoCode _geocodeData;
      _geocodeData=GeoCode.fromJson(jsonData);
      _geoCode=_geocodeData;
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}
