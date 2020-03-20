import 'package:zomato/models/restaurants/restaurant.dart';

class GeoCode {
  Locality location;
  Popularity popularity;
  List<NearbyRestaurants> nearbyRestaurants;

  GeoCode(
      {this.location, this.popularity,this.nearbyRestaurants});

  GeoCode.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? new Locality.fromJson(json['location'])
        : null;
    popularity = json['popularity'] != null
        ? new Popularity.fromJson(json['popularity'])
        : null;
    if (json['nearby_restaurants'] != null) {
      nearbyRestaurants = new List<NearbyRestaurants>();
      json['nearby_restaurants'].forEach((v) {
        nearbyRestaurants.add(new NearbyRestaurants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    if (this.popularity != null) {
      data['popularity'] = this.popularity.toJson();
    }

    if (this.nearbyRestaurants != null) {
      data['nearby_restaurants'] =
          this.nearbyRestaurants.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Locality {
  String title;
  String latitude;
  String longitude;
  int cityId;
  String cityName;


  Locality({ this.title,
    this.latitude,
    this.longitude,
    this.cityId,
    this.cityName,
  });

  Locality.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    cityId = json['city_id'];
    cityName = json['city_name'];
    }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['city_id'] = this.cityId;
    data['city_name'] = this.cityName;
    return data;
  }
}

class Popularity {
  String popularity;
  String nightlifeIndex;
  List<String> nearbyRes;
  List<String> topCuisines;
  String popularityRes;
  String nightlifeRes;
  String city;

  Popularity(
      {this.popularity,
        this.nightlifeIndex,
        this.nearbyRes,
        this.topCuisines,
        this.popularityRes,
        this.nightlifeRes,

        this.city});

  Popularity.fromJson(Map<String, dynamic> json) {
    popularity = json['popularity'];
    nightlifeIndex = json['nightlife_index'];
    nearbyRes = json['nearby_res'].cast<String>();
    topCuisines = json['top_cuisines'].cast<String>();
    popularityRes = json['popularity_res'];
    nightlifeRes = json['nightlife_res'];

    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this.popularity;
    data['nightlife_index'] = this.nightlifeIndex;
    data['nearby_res'] = this.nearbyRes;
    data['top_cuisines'] = this.topCuisines;
    data['popularity_res'] = this.popularityRes;
    data['nightlife_res'] = this.nightlifeRes;
    data['city'] = this.city;
    return data;
  }
}

class NearbyRestaurants {
  Restaurant restaurant;

  NearbyRestaurants({this.restaurant});

  NearbyRestaurants.fromJson(Map<String, dynamic> json) {
    restaurant = json['restaurant'] != null
        ? new Restaurant.fromJson(json['restaurant'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.restaurant != null) {
      data['restaurant'] = this.restaurant.toJson();
    }
    return data;
  }
}
/*

class Restaurant {
  String id;
  String name;
  Location location;
  int switchToOrderMenu;
  String cuisines;
  int averageCostForTwo;
  int priceRange;
  String currency;
  String thumb;
  UserRating userRating;
  String photosUrl;
  String menuUrl;
  String featuredImage;
  int hasOnlineDelivery;
  int isDeliveringNow;
  Restaurant(
      {
        this.id,
        this.name,

        this.location,
        this.switchToOrderMenu,
        this.cuisines,
        this.averageCostForTwo,
        this.priceRange,
        this.currency,

        this.thumb,
        this.userRating,
        this.photosUrl,
        this.menuUrl,
        this.featuredImage,

        this.hasOnlineDelivery,
        this.isDeliveringNow,}
        );


  Restaurant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
       location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    switchToOrderMenu = json['switch_to_order_menu'];
    cuisines = json['cuisines'];
    averageCostForTwo = json['average_cost_for_two'];
    priceRange = json['price_range'];
    currency = json['currency'];

    thumb = json['thumb'];
    userRating = json['user_rating'] != null
        ? new UserRating.fromJson(json['user_rating'])
        : null;
    photosUrl = json['photos_url'];
    menuUrl = json['menu_url'];
    featuredImage = json['featured_image'];

    hasOnlineDelivery = json['has_online_delivery'];
    isDeliveringNow = json['is_delivering_now'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;

    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    data['switch_to_order_menu'] = this.switchToOrderMenu;
    data['cuisines'] = this.cuisines;
    data['average_cost_for_two'] = this.averageCostForTwo;
    data['price_range'] = this.priceRange;
    data['currency'] = this.currency;
    data['thumb'] = this.thumb;
    if (this.userRating != null) {
      data['user_rating'] = this.userRating.toJson();
    }
    data['photos_url'] = this.photosUrl;
    data['menu_url'] = this.menuUrl;
    data['featured_image'] = this.featuredImage;
    data['has_online_delivery'] = this.hasOnlineDelivery;
    data['is_delivering_now'] = this.isDeliveringNow;

    return data;
  }
}
*/


class Location {
  String address;
  String locality;
  String city;
  int cityId;
  String latitude;
  String longitude;

  Location(
      {this.address,
        this.locality,
        this.city,
        this.cityId,
        this.latitude,
        this.longitude,
       });

  Location.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    locality = json['locality'];
    city = json['city'];
    cityId = json['city_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['locality'] = this.locality;
    data['city'] = this.city;
    data['city_id'] = this.cityId;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class UserRating {
  String aggregateRating;
  String ratingText;
  String ratingColor;
  String votes;

  UserRating(
      {this.aggregateRating,
        this.ratingText,
        this.ratingColor,
        this.votes});

  UserRating.fromJson(Map<String, dynamic> json) {
    aggregateRating = json['aggregate_rating'];
    ratingText = json['rating_text'];
    ratingColor = json['rating_color'];
    votes = json['votes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aggregate_rating'] = this.aggregateRating;
    data['rating_text'] = this.ratingText;
    data['rating_color'] = this.ratingColor;
    data['votes'] = this.votes;
    return data;
  }
}

