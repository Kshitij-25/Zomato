import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:zomato/models/common/collections.dart';
import 'package:http/http.dart' as Http;

import '../constants.dart';

class CollectionsProvider with ChangeNotifier{
  ResCollections _collections;
  Future<void> fetchCollections({double lat, double long, int cityId}) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/collections?',//&count=10',
          headers: {
            'user-key': '$apiKey',
            'lat' : '$lat',
            'lon': '$long',
            'city_id' : '$cityId',
            'count' : '10',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      ResCollections collections = ResCollections.fromJson(jsonData);
      _collections =collections;
      print(_collections);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}