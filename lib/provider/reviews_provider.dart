import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/restaurants/reviews.dart';
import '../constants.dart';

class ReviewsProvider with ChangeNotifier{
  Reviews _reviews;
  Reviews get reviews => _reviews;
  Future<void> fetchRestaurant({int resId}) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/reviews?',
          headers: {
            'user-key': '$apiKey',
            'res_id' : '$resId',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      Reviews _reviewsData = Reviews.fromJson(jsonData);
      _reviews = _reviewsData;
      print(_reviews);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}