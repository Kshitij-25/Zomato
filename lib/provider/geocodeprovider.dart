import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/geocode.dart';
import 'package:zomato/models/sample.dart';

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
            'user-key': '44b18afd949ec2fe03fa8fa6149b77cd',
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
