class HorizontalPostmodel {
  int id;
  String? title;
  String userName;
  String? userPhoto;
  String photo;
  String date;

  HorizontalPostmodel(
      {required this.id,
      this.title,
      required this.userName,
      this.userPhoto,
      required this.photo,
      required this.date});

  HorizontalPostmodel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        userName = json['userName'],
        userPhoto = json['userPhoto'],
        photo = json['photo'],
        date = json['date'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['userName'] = userName;
    data['userPhoto'] = userPhoto;
    data['photo'] = photo;
    data['date'] = date;
    return data;
  }
}
