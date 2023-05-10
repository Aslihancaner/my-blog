import 'package:my_blog/models/horizontal_post_model.dart';

//adını homepagemodel yap
//categories+ yerine üst için slider ekle
class SlidersModel {
  List<Categories>? categories;

  SlidersModel({required this.categories});

//burası hatalı olabilir. sor

  SlidersModel.fromJson(Map<String, dynamic> json) {
    // assert(json['categories'] != null, 'Categories cannot be null in SlidersModel.');
    if (json['categories'] != null) {
      categories = <Categories>[];

      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categories'] = categories!.map((v) => v.toJson()).toList();
    return data;
  }
}

//id ve name bos olamaz, ama if'te hata veriyor sor
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
