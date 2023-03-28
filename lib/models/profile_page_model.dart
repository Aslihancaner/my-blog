class ProfilePageModel {
  int userId;
  String email;
  String? phoneNumber;

  ProfilePageModel({
    required this.userId,
    required this.email,
    this.phoneNumber,
  });

  ProfilePageModel.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        email = json['email'],
        phoneNumber = json['phoneNumber'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['email'] = email;
    data['phoneNumber'] = phoneNumber;

    return data;
  }
}
