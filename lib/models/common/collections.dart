class ResCollections {
  List<Collections> _collections;
  String _displayText;

  ResCollections(
      {List<Collections> collections,
        String displayText,
       }) {
    this._collections = collections;
    this._displayText = displayText;
  }

  List<Collections> get collections => _collections;
  set collections(List<Collections> collections) => _collections = collections;
  String get displayText => _displayText;
  set displayText(String displayText) => _displayText = displayText;


  ResCollections.fromJson(Map<String, dynamic> json) {
    if (json['collections'] != null) {
      _collections = new List<Collections>();
      json['collections'].forEach((v) {
        _collections.add(Collections.fromJson(v));
      });
    }
    _displayText = json['display_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._collections != null) {
      data['collections'] = this._collections.map((v) => v.toJson()).toList();
    }
    data['display_text'] = this._displayText;
     return data;
  }
}

class Collections {
  Collection _collection;

  Collections({Collection collection}) {
    this._collection = collection;
  }

  Collection get collection => _collection;
  set collection(Collection collection) => _collection = collection;

  Collections.fromJson(Map<String, dynamic> json) {
    _collection = json['collection'] != null
        ? new Collection.fromJson(json['collection'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._collection != null) {
      data['collection'] = this._collection.toJson();
    }
    return data;
  }
}

class Collection {
  int _resCount;
  String _imageUrl;
  String _title;
  String _description;

  Collection(
      { int resCount,
        String imageUrl,
        String title,
        String description,
        }) {
     this._resCount = resCount;
    this._imageUrl = imageUrl;
    this._title = title;
    this._description = description;
     }

   int get resCount => _resCount;
  set resCount(int resCount) => _resCount = resCount;
  String get imageUrl => _imageUrl;
  set imageUrl(String imageUrl) => _imageUrl = imageUrl;
 String get title => _title;
  set title(String title) => _title = title;
  String get description => _description;
  set description(String description) => _description = description;


  Collection.fromJson(Map<String, dynamic> json) {
   _resCount = json['res_count'];
    _imageUrl = json['image_url'];
    _title = json['title'];
    _description = json['description'];
    }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['res_count'] = this._resCount;
    data['image_url'] = this._imageUrl;
    data['title'] = this._title;
    data['description'] = this._description;
    return data;
  }
}