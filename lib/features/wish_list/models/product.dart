import 'package:trailing_e_commerce_app/features/wish_list/models/category.dart';

class Product {
  int? id;
  String? title;
  int? price;
  String? description;
  Category? category;
  List<String>? images;

  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.category,
      this.images});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'] != null
        ?  Category.fromJson(json['category'])
        : null;
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['price'] = price;
    data['description'] = description;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['images'] = images;
    return data;
  }
}
