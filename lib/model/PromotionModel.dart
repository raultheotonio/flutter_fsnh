class PromotionModel {
  String code;
  String title;
  String description;
  String url;

  PromotionModel({this.code, this.title, this.description, this.url});

  PromotionModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['title'] = this.title;
    data['description'] = this.description;
    data['url'] = this.url;
    return data;
  }
}