import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as Http;
import 'package:zomato/models/location/location_details.dart';
import '../constants.dart';


/*
entity_id
entity_type   COMES FROM LOCATION CLASS
*/

class LocationDetailsProvider with ChangeNotifier{
  LocationDetails _locationDetails;
  Future<void> fetchLocationDetails({String entityType, int entityId}) async{
    try {
      var response = await Http.get(
          'https://developers.zomato.com/api/v2.1/location_details?',
          headers: {
            'user-key': '$apiKey',
            'entity_id' : '$entityId',
            'entity_type': '$entityType',
          });
      var ak = response.body;
      var jsonData = json.decode(ak);
      LocationDetails locationDetails = LocationDetails.fromJson(jsonData);
      _locationDetails = locationDetails;
      print(_locationDetails);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}