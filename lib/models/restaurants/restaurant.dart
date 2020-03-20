import 'package:zomato/models/location/location_details.dart';
import 'package:zomato/models/restaurants/reviews.dart';

class Restaurant {
  String _id;
  String _name;
  RestaurantLocation _location;
  int _switchToOrderMenu;
  String _cuisines;
  String _timings;
  int _averageCostForTwo;
  int _priceRange;
  List<String> _highlights;
  String _thumb;
  UserRating _userRating;
  String _photosUrl;
  int _photoCount;
  List<Photos> _photos;
  String _menuUrl;
  String _featuredImage;
  String _eventsUrl;
  String _phoneNumbers;
  AllReviews _allReviews;

  Restaurant(
      {
        String id,
        String name,
        RestaurantLocation location,
        int switchToOrderMenu,
        String cuisines,
        String timings,
        int averageCostForTwo,
        int priceRange,
        List<String> highlights,
        String thumb,
        UserRating userRating,
        String photosUrl,
        List<Photos> photos,
        String menuUrl,
        String featuredImage,
        String eventsUrl,
        String phoneNumbers,
        AllReviews allReviews,
      }) {
    this._id = id;
    this._name = name;
    this._switchToOrderMenu = switchToOrderMenu;
    this._cuisines = cuisines;
    this._timings = timings;
    this._averageCostForTwo = averageCostForTwo;
    this._priceRange = priceRange;
    this._highlights = highlights;
    this._thumb = thumb;
    this._userRating = userRating;
    this._photosUrl = photosUrl;
    this._photoCount = photoCount;
    this._photos = photos;
    this._menuUrl = menuUrl;
    this._featuredImage = featuredImage;
    this._eventsUrl = eventsUrl;
    this._phoneNumbers = phoneNumbers;
    this._allReviews = allReviews;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  RestaurantLocation get location => _location;
  set location(RestaurantLocation location) => _location = location;
  int get switchToOrderMenu => _switchToOrderMenu;
  set switchToOrderMenu(int switchToOrderMenu) =>
      _switchToOrderMenu = switchToOrderMenu;
  String get cuisines => _cuisines;
  set cuisines(String cuisines) => _cuisines = cuisines;
  String get timings => _timings;
  set timings(String timings) => _timings = timings;
  int get averageCostForTwo => _averageCostForTwo;
  set averageCostForTwo(int averageCostForTwo) =>
      _averageCostForTwo = averageCostForTwo;
  int get priceRange => _priceRange;
  set priceRange(int priceRange) => _priceRange = priceRange;
  List<String> get highlights => _highlights;
  set highlights(List<String> highlights) => _highlights = highlights;
  String get thumb => _thumb;
  set thumb(String thumb) => _thumb = thumb;
  UserRating get userRating => _userRating;
  set userRating(UserRating userRating) => _userRating = userRating;
  String get photosUrl => _photosUrl;
  set photosUrl(String photosUrl) => _photosUrl = photosUrl;
  int get photoCount => _photoCount;
  set photoCount(int photoCount) => _photoCount = photoCount;
  List<Photos> get photos => _photos;
  set photos(List<Photos> photos) => _photos = photos;
  String get menuUrl => _menuUrl;
  set menuUrl(String menuUrl) => _menuUrl = menuUrl;
  String get featuredImage => _featuredImage;
  set featuredImage(String featuredImage) => _featuredImage = featuredImage;
  String get eventsUrl => _eventsUrl;
  set eventsUrl(String eventsUrl) => _eventsUrl = eventsUrl;
  String get phoneNumbers => _phoneNumbers;
  set phoneNumbers(String phoneNumbers) => _phoneNumbers = phoneNumbers;
  AllReviews get allReviews => _allReviews;
  set allReviews(AllReviews allReviews) => _allReviews = allReviews;

  Restaurant.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _location = json['location'] != null
        ? RestaurantLocation.fromJson(json['location'])
        : null;
    _switchToOrderMenu = json['switch_to_order_menu'];
    _cuisines = json['cuisines'];
    _timings = json['timings'];
    _averageCostForTwo = json['average_cost_for_two'];
    _priceRange = json['price_range'];
    _highlights = json['highlights'].cast<String>();
    _thumb = json['thumb'];
    _userRating = json['user_rating'] != null
        ? new UserRating.fromJson(json['user_rating'])
        : null;
    _photosUrl = json['photos_url'];
    _photoCount = json['photo_count'];
    if (json['photos'] != null) {
      _photos = new List<Photos>();
      json['photos'].forEach((v) {
        _photos.add(new Photos.fromJson(v));
      });
    }
    _menuUrl = json['menu_url'];
    _featuredImage = json['featured_image'];
    _eventsUrl = json['events_url'];
    _phoneNumbers = json['phone_numbers'];
    _allReviews = json['all_reviews'] != null
        ? new AllReviews.fromJson(json['all_reviews'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    if (this._location != null) {
      data['location'] = this._location.toJson();
    }
    data['switch_to_order_menu'] = this._switchToOrderMenu;
    data['cuisines'] = this._cuisines;
    data['timings'] = this._timings;
    data['average_cost_for_two'] = this._averageCostForTwo;
    data['price_range'] = this._priceRange;
    data['highlights'] = this._highlights;
    data['thumb'] = this._thumb;
    if (this._userRating != null) {
      data['user_rating'] = this._userRating.toJson();
    }
    data['photos_url'] = this._photosUrl;
    data['photo_count'] = this._photoCount;
    if (this._photos != null) {
      data['photos'] = this._photos.map((v) => v.toJson()).toList();
    }
    data['menu_url'] = this._menuUrl;
    data['featured_image'] = this._featuredImage;
    data['events_url'] = this._eventsUrl;
    data['phone_numbers'] = this._phoneNumbers;
    if (this._allReviews != null) {
      data['all_reviews'] = this._allReviews.toJson();
    }
    return data;
  }
}

class HasMenuStatus {
  int _delivery;
  int _takeaway;

  HasMenuStatus({int delivery, int takeaway}) {
    this._delivery = delivery;
    this._takeaway = takeaway;
  }

  int get delivery => _delivery;
  set delivery(int delivery) => _delivery = delivery;
  int get takeaway => _takeaway;
  set takeaway(int takeaway) => _takeaway = takeaway;

  HasMenuStatus.fromJson(Map<String, dynamic> json) {
    _delivery = json['delivery'];
    _takeaway = json['takeaway'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['delivery'] = this._delivery;
    data['takeaway'] = this._takeaway;
    return data;
  }
}


class UserRating {
  String _aggregateRating;
  String _ratingText;
  RatingObj _ratingObj;
  String _votes;

  UserRating(
      {String aggregateRating,
        String ratingText,
        String ratingColor,
        RatingObj ratingObj,
        String votes}) {
    this._aggregateRating = aggregateRating;
    this._ratingText = ratingText;
    this._ratingObj = ratingObj;
    this._votes = votes;
  }

  String get aggregateRating => _aggregateRating;
  set aggregateRating(String aggregateRating) =>
      _aggregateRating = aggregateRating;
  String get ratingText => _ratingText;
  set ratingText(String ratingText) => _ratingText = ratingText;
  RatingObj get ratingObj => _ratingObj;
  set ratingObj(RatingObj ratingObj) => _ratingObj = ratingObj;
  String get votes => _votes;
  set votes(String votes) => _votes = votes;

  UserRating.fromJson(Map<String, dynamic> json) {
    _aggregateRating = json['aggregate_rating'];
    _ratingText = json['rating_text'];
    _ratingObj = json['rating_obj'] != null
        ? new RatingObj.fromJson(json['rating_obj'])
        : null;
    _votes = json['votes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aggregate_rating'] = this._aggregateRating;
    data['rating_text'] = this._ratingText;
    if (this._ratingObj != null) {
      data['rating_obj'] = this._ratingObj.toJson();
    }
    data['votes'] = this._votes;
    return data;
  }
}

class RatingObj {
  Title _title;
  BgColor _bgColor;

  RatingObj({Title title, BgColor bgColor}) {
    this._title = title;
    this._bgColor = bgColor;
  }

  Title get title => _title;
  set title(Title title) => _title = title;
  BgColor get bgColor => _bgColor;
  set bgColor(BgColor bgColor) => _bgColor = bgColor;

  RatingObj.fromJson(Map<String, dynamic> json) {
    _title = json['title'] != null ? new Title.fromJson(json['title']) : null;
    _bgColor = json['bg_color'] != null
        ? new BgColor.fromJson(json['bg_color'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._title != null) {
      data['title'] = this._title.toJson();
    }
    if (this._bgColor != null) {
      data['bg_color'] = this._bgColor.toJson();
    }
    return data;
  }
}

class Title {
  String _text;

  Title({String text}) {
    this._text = text;
  }

  String get text => _text;
  set text(String text) => _text = text;

  Title.fromJson(Map<String, dynamic> json) {
    _text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this._text;
    return data;
  }
}

class BgColor {
  String _type;
  String _tint;

  BgColor({String type, String tint}) {
    this._type = type;
    this._tint = tint;
  }

  String get type => _type;
  set type(String type) => _type = type;
  String get tint => _tint;
  set tint(String tint) => _tint = tint;

  BgColor.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _tint = json['tint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['tint'] = this._tint;
    return data;
  }
}

class Photos {
  Photo _photo;

  Photos({Photo photo}) {
    this._photo = photo;
  }

  Photo get photo => _photo;
  set photo(Photo photo) => _photo = photo;

  Photos.fromJson(Map<String, dynamic> json) {
    _photo = json['photo'] != null ? new Photo.fromJson(json['photo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._photo != null) {
      data['photo'] = this._photo.toJson();
    }
    return data;
  }
}

class Photo {
  String _id;
  User _user;
  int _resId;
  String _caption;
  String _friendlyTime;
  int _width;
  int _height;

  Photo(
      {String id,
        User user,
        int resId,
        String caption,
        String friendlyTime,
        int width,
        int height}) {
    this._id = id;
    this._user = user;
    this._resId = resId;
    this._caption = caption;
    this._friendlyTime = friendlyTime;
    this._width = width;
    this._height = height;
  }

  String get id => _id;
  set id(String id) => _id = id;
  User get user => _user;
  set user(User user) => _user = user;
  int get resId => _resId;
  set resId(int resId) => _resId = resId;
  String get caption => _caption;
  set caption(String caption) => _caption = caption;
  String get friendlyTime => _friendlyTime;
  set friendlyTime(String friendlyTime) => _friendlyTime = friendlyTime;
  int get width => _width;
  set width(int width) => _width = width;
  int get height => _height;
  set height(int height) => _height = height;

  Photo.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _user = json['user'] != null ? new User.fromJson(json['user']) : null;
    _resId = json['res_id'];
    _caption = json['caption'];
    _friendlyTime = json['friendly_time'];
    _width = json['width'];
    _height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    if (this._user != null) {
      data['user'] = this._user.toJson();
    }
    data['res_id'] = this._resId;
    data['caption'] = this._caption;
    data['friendly_time'] = this._friendlyTime;
    data['width'] = this._width;
    data['height'] = this._height;
    return data;
  }
}
