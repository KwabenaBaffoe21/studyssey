class UserModel {
  final String firstName;
  final String middleName;
  final String lastName;
  final String uid;
  final String content;
  final DateTime timestamp;
  final String fullname;
  final String profileImage;
  final String status;

  UserModel(
      {required this.uid,
      required this.firstName,
      required this.content,
      required this.fullname,
      required this.lastName,
      required this.middleName,
      required this.timestamp,
      required this.profileImage,required this.status,});

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'fullName': fullname,
        'content': content,
        'timeStamp': timestamp,
        'profileImage': profileImage,
        'status': status,
      };

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        uid: json['uid'],
        firstName: json['firstName'],
        content: json['content'],
        fullname: json['fullname'],
        lastName: json['lastName'],
        middleName: json['middleName'],
        timestamp: json['timestamp'],
        profileImage: json['profileImage'],
        status: json['status'],
      );
}
