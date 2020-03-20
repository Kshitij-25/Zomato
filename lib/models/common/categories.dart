class DineCategories {
  List<Categories> _categories;

  DineCategories({List<Categories> categories}) {
    this._categories = categories;
  }

  List<Categories> get categories => _categories;
  set categories(List<Categories> categories) => _categories = categories;

  DineCategories.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      _categories = new List<Categories>();
      json['categories'].forEach((v) {
        _categories.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._categories != null) {
      data['categories'] = this._categories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  Category _category;

  Categories({Category category}) {
    this._category = category;
  }

  Category get category => _category;
  set category(Category category) => _category = category;

  Categories.fromJson(Map<String, dynamic> json) {
    _category = json['categories'] != null
        ? new Category.fromJson(json['categories'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._category != null) {
      data['categories'] = this._category.toJson();
    }
    return data;
  }
}

class Category {
  int _id;
  String _name;

  Category({int id, String name}) {
    this._id = id;
    this._name = name;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;

  Category.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    return data;
  }
}