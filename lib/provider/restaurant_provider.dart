import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/restaurants/restaurant.dart';
import '../constants.dart';

class RestaurantProvider with ChangeNotifier{
  Restaurant _restaurant;
  Restaurant get restaurant => _restaurant;
  Future<void> fetchRestaurant({ int resId}) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/restaurant?',
          headers: {
            'user-key': '$apiKey',
            'res_id' : '$resId',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      Restaurant _restaurantData;
      _restaurantData = Restaurant.fromJson(jsonData);
      _restaurant = _restaurantData;
      print(_restaurant);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}