import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:studyssey/utilize/user_model.dart';

Stream<List<UserModel>> readUser() => FirebaseFirestore.instance
        .collection('chat')
        .snapshots()
        .asyncMap((snapshot) async {
      List<UserModel> users = [];

      for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
        // Extract data from the 'chat' collection
        String content = doc['content'];
        String status = doc['status'];
        DateTime timestamp = doc['timestamp']?.toDate() ?? DateTime.now();

        // Assuming 'timeStamp' is a Firebase Timestamp

        // Extract studentID from the 'chat' collection
        String studentID = doc['studentID'];

        // Query the 'Student' collection using studentID
        DocumentSnapshot<Map<String, dynamic>> studentSnapshot =
            await FirebaseFirestore.instance
                .collection('student')
                .doc(studentID)
                .get();

        // Extract data from the 'Student' collection
        String firstName = studentSnapshot['firstName'];
        String middleName = studentSnapshot['middleName'];
        String lastName = studentSnapshot['lastName'];
        String profileImage = studentSnapshot['profileImage'];

        // Create UserModel and add it to the list
        UserModel user = UserModel(
          content: content,
          profileImage: profileImage,
          timestamp: timestamp,
          firstName: firstName,
          middleName: middleName,
          lastName: lastName,
          uid: studentID,
          fullName: '$firstName $middleName $lastName',
          status: status,
        );

        users.add(user);
      }

      return users;
    }).asBroadcastStream();
