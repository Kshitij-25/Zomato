import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/search.dart';
import '../constants.dart';

class SearchProvider with ChangeNotifier{
  Search _search;
  Search get search => _search;
  Future<void> fetchSerchResults({
    int entityId,
    EntityType entityType,
    String q,
    double lat,
    double long,
    String cuisines,
    int establishmentId,
    int collectionId,
    Sort sort,
    Order order,
  }) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/search?',
          headers: {
            'user-key': '$apiKey',
            'entity_id' : '$entityId',
            'entity_type' : '$entityType',
            'q' : '$q',
            'lat' : '$lat',
            'lon' : '$long',
            'cuisines' : '$cuisines',
            'establishment_type' : '$establishmentId',
            'collection_id' : '$collectionId',
            'sort' : '$sort',
            'order' : '$order'
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      Search _searchData =Search.fromJson(jsonData);
      _search = _searchData;
      print(_search);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}