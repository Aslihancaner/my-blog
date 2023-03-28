import 'package:get/get_connect/http/src/request/request.dart';

class VerticalPostmodel {
  int id;
  String? title;
  String userName;
  String photo;
  String? userPhoto;

  VerticalPostmodel(
      {required this.id,
      this.title,
      required this.userName,
      required this.photo,
      this.userPhoto});

  VerticalPostmodel.fromJson(Map<String, dynamic> json) 
    : id = json['id'],
    title = json['title'],
    userName = json['userName'],
    photo = json['photo'],
    userPhoto = json['userPhoto'];
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['userName'] = userName;
    data['photo'] = photo;
    data['userPhoto'] = userPhoto;
    return data;
  }
}
