class UserModel {
  late String? uid;
  late String fullName;
  late String profileImage;
  late String content;
  late DateTime timeStamp;

  UserModel(
      {this.uid,
      required this.fullName,
      required this.profileImage,
      required this.content,
      required this.timeStamp});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      uid: json['uid'],
      profileImage: json['profileImage'],
      fullName: json['fullName'],
      content: json['content'],
      timeStamp: json['timeStamp']);
}
