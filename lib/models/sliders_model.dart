import 'package:my_blog/models/horizontal_post_model.dart';
import 'package:my_blog/widgets/horizontal_post_container_widget.dart';

class SlidersModel {
  late List<Categories> categories;

  SlidersModel({required this.categories});

//burası hatalı olabilir. sor

 SlidersModel.fromJson(Map<String, dynamic> json) {
  assert(json['categories'] != null, 'Categories cannot be null in SlidersModel.');
  categories = <Categories>[];
  json['categories'].forEach((v) {
    categories.add(new Categories.fromJson(v));
  });
}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (categories != null) {
      data['categories'] = categories.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  List<HorizontalPostmodel>? data;

  Categories({this.id, this.name, this.data});

  Categories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['data'] != null) {
      data = <HorizontalPostmodel>[];
      json['data'].forEach((v) {
        data!.add(HorizontalPostmodel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

