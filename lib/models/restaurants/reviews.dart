class Reviews {
  int _reviewsCount;
  int _reviewsStart;
  int _reviewsShown;
  List<UserReviews> _userReviews;

  Reviews(
      {int reviewsCount,
        int reviewsStart,
        int reviewsShown,
        List<UserReviews> userReviews}) {
    this._reviewsCount = reviewsCount;
    this._reviewsStart = reviewsStart;
    this._reviewsShown = reviewsShown;
    this._userReviews = userReviews;
  }

  int get reviewsCount => _reviewsCount;
  set reviewsCount(int reviewsCount) => _reviewsCount = reviewsCount;
  int get reviewsStart => _reviewsStart;
  set reviewsStart(int reviewsStart) => _reviewsStart = reviewsStart;
  int get reviewsShown => _reviewsShown;
  set reviewsShown(int reviewsShown) => _reviewsShown = reviewsShown;
  List<UserReviews> get userReviews => _userReviews;
  set userReviews(List<UserReviews> userReviews) => _userReviews = userReviews;

  Reviews.fromJson(Map<String, dynamic> json) {
    _reviewsCount = json['reviews_count'];
    _reviewsStart = json['reviews_start'];
    _reviewsShown = json['reviews_shown'];
    if (json['user_reviews'] != null) {
      _userReviews = new List<UserReviews>();
      json['user_reviews'].forEach((v) {
        _userReviews.add(new UserReviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reviews_count'] = this._reviewsCount;
    data['reviews_start'] = this._reviewsStart;
    data['reviews_shown'] = this._reviewsShown;
    if (this._userReviews != null) {
      data['user_reviews'] = this._userReviews.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserReviews {
  Review _review;

  UserReviews({Review review}) {
    this._review = review;
  }

  Review get review => _review;
  set review(Review review) => _review = review;

  UserReviews.fromJson(Map<String, dynamic> json) {
    _review =
    json['review'] != null ? new Review.fromJson(json['review']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._review != null) {
      data['review'] = this._review.toJson();
    }
    return data;
  }
}

class Review {
  double _rating;
  String _reviewText;
  String _ratingText;
  int _likes;
  User _user;

  Review(
      {double rating,
        String reviewText,
        String ratingText,
        int likes,
        User user,
        }) {
    this._rating = rating;
    this._reviewText = reviewText;
    this._ratingText = ratingText;
    this._likes = likes;
    this._user = user;
    }

  double get rating => _rating;
  set rating(double rating) => _rating = rating;
  String get reviewText => _reviewText;
  set reviewText(String reviewText) => _reviewText = reviewText;
  String get ratingText => _ratingText;
  set ratingText(String ratingText) => _ratingText = ratingText;
  int get likes => _likes;
  set likes(int likes) => _likes = likes;
  User get user => _user;
  set user(User user) => _user = user;

  Review.fromJson(Map<String, dynamic> json) {
    _rating = json['rating'];
    _reviewText = json['review_text'];
    _ratingText = json['rating_text'];
    _likes = json['likes'];
    _user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this._rating;
    data['review_text'] = this._reviewText;
    data['rating_text'] = this._ratingText;
    data['likes'] = this._likes;
    if (this._user != null) {
      data['user'] = this._user.toJson();
    }
    return data;
  }
}

class User {
  String _name;
  String _profileImage;
  String _zomatoHandle;

  User(
      {String name,
        String profileImage,
        String zomatoHandle}) {
    this._name = name;
    this._profileImage = profileImage;
    this._zomatoHandle = zomatoHandle;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get profileImage => _profileImage;
  set profileImage(String profileImage) => _profileImage = profileImage;
  String get zomatoHandle => _zomatoHandle;
  set zomatoHandle(String zomatoHandle) => _zomatoHandle = zomatoHandle;

  User.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _profileImage = json['profile_image'];
    _zomatoHandle = json['zomato_handle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['profile_image'] = this._profileImage;
    data['zomato_handle'] = this._zomatoHandle;
    return data;
  }
}

class AllReviews {
  List<Reviews> _reviews;

  AllReviews({List<Reviews> reviews}) {
    this._reviews = reviews;
  }

  List<Reviews> get reviews => _reviews;
  set reviews(List<Reviews> reviews) => _reviews = reviews;

  AllReviews.fromJson(Map<String, dynamic> json) {
    if (json['reviews'] != null) {
      _reviews = new List<Reviews>();
      json['reviews'].forEach((v) {
        _reviews.add(new Reviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._reviews != null) {
      data['reviews'] = this._reviews.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

