import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:zomato/models/common/categories.dart';
import 'package:http/http.dart' as Http;
import '../constants.dart';

class CategoriesProvider with ChangeNotifier{
  DineCategories _categories;
  DineCategories get categories => _categories;
  Future<void> fetchCategories() async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/categories',
          headers: {
            'user-key': '$apiKey',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      DineCategories _categoriesData;
      _categoriesData = DineCategories.fromJson(jsonData);
      _categories = _categoriesData;
       notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}
