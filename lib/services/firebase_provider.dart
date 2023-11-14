import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:studyssey/utilize/usermodel.dart';

class FirebaseProvider extends ChangeNotifier {
  List<UserModel> users = [];

  List<UserModel> getAllUsers() {
    FirebaseFirestore.instance
        .collection('chat')
        .snapshots(includeMetadataChanges: true)
        .listen((chat) {
      users =
          chat.docs.map((doc) => UserModel.fromJson(doc.data())).toList();
      notifyListeners();
    });
    return users;
  }
}
