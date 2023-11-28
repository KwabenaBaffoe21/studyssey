
class UserModel {
  final String firstName;
  final String lastName;
  final String uid;
  final DateTime timestamp;
  final String profileImage;
  final bool isOnline;
  final String mobileNumber;
  final String address;
  final String studentEmail;
  final String indexNumber;

  const UserModel({
    required this.uid,
    required this.firstName,
    required this.lastName,
    required this.timestamp,
    required this.profileImage,
    this.isOnline = false,
    required this.mobileNumber,
    required this.address,
    required this.studentEmail,
    required this.indexNumber,
  });

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'firstName': firstName,
        'lastName': lastName,
        'timestamp': timestamp,
        'profileImage': profileImage,
        'isOnline': isOnline,
        'mobileNumber': mobileNumber,
        'address': address,
        'studentEmail': studentEmail,
        'indexNumber': indexNumber,
      };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        uid: json['uid'] ?? '',
        firstName: json['firstName'] ?? '',
        lastName: json['lastName'] ?? '',
        timestamp: json['timestamp'].toDate(),
        profileImage: json['profileImage'] ?? '',
        mobileNumber: json['mobileNumber'] ?? '',
        address: json['address'] ?? '',
        studentEmail: json['studentEmail'] ?? '',
        indexNumber: json['indexNumber'] ?? '',
        isOnline: json['isOnline'] ?? false,
      );
}
