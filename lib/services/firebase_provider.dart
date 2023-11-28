import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:studyssey/utilize/user_model.dart';

class FirebaseProvider extends ChangeNotifier {
  List<UserModel> users = [];

  List<UserModel> getAllUsers() {
    FirebaseFirestore.instance
        .collection('student')
        .orderBy('timestamp', descending: true)
        .snapshots(includeMetadataChanges: true)
        .listen((student) {
      users = student.docs
          .map(
            (doc) => UserModel.fromJson(
              doc.data(),
            ),
          )
          .toList();
      notifyListeners();
    });
    return users;
  }
}
