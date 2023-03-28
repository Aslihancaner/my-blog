class DetailModel {
  final int id;
  final String? title;
  final String userName;
  final String date;
  final String photo;
  final String? userPhoto;
  final String? description;

  DetailModel(
      {required this.id,
      this.title,
      required this.userName,
      required this.date,
      required this.photo,
      this.userPhoto,
      this.description});

  DetailModel.fromJson(Map<String?, dynamic> json) 
    : id = json['id'],
    title = json['title'],
    userName = json['userName'],
    date = json['date'],
    photo = json['photo'],
    userPhoto = json['userPhoto'],
    description = json['description'];
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['userName'] = userName;
    data['date'] = date;
    data['photo'] = photo;
    data['userPhoto'] = userPhoto;
    data['description'] = description;
    return data;
  }
}