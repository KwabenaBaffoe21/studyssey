class UserModel {
  final String firstName;
  final String middleName;
  final String lastName;
  final String uid;
  final String content;
  final DateTime timestamp;
  final String fullName;
  final String profileImage;
  final String status;

  UserModel({
    required this.uid,
    required this.firstName,
    required this.content,
    required this.fullName,
    required this.lastName,
    required this.middleName,
    required this.timestamp,
    required this.profileImage,
    required this.status,
  });

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'fullName': fullName,
        'content': content,
        'timeStamp': timestamp,
        'profileImage': profileImage,
        'status': status,
      };

  static UserModel fromJson(Map<String, dynamic> json) => UserModel(
        uid: json['uid'] ?? '',
        firstName: json['firstName'] ?? '',
        content: json['content'] ?? '',
        fullName: json['fullName'] ?? '',
        lastName: json['lastName'] ?? '',
        middleName: json['middleName'] ?? '',
        timestamp: json['timestamp'].toDate,
        profileImage: json['profileImage'] ?? '',
        status: json['status'] ?? '',
      );
}
