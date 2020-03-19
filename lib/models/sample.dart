import 'package:geolocator/geolocator.dart';
class Sample{
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async{
  try{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latitude = position.latitude;
    longitude = position.longitude;
    print(position.altitude);
  } catch(e){
      }
  }
}