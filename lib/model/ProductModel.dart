class ProductModel {
  String title;
  String description;
  String url;

  ProductModel({this.title, this.description, this.url});

  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    return data;
  }
}

