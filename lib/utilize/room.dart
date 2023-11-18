import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:studyssey/utilize/user_model.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
UserModel? receiver;
types.Message? message;

class RoomCollection {
  Future<String?> fetchUsers() async {
    final User? user = firebaseAuth.currentUser;
    final String currentUserID = user!.uid;
    if (kDebugMode) {
      print('currentUserID: $currentUserID');
    }
    return currentUserID;
  }

  Future room() async {
    String? currentUserID = await fetchUsers();
    String? roomID;
    String uid = receiver!.uid;
    roomID = currentUserID! + uid;
    if (kDebugMode) {
      print('This is the roomID: $roomID');
    }
  }

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> createRoom(String roomID, List<String> participants) async {
    if (roomID.isEmpty) {
      throw Exception('roomID cannot be empty');
    }
    DocumentReference roomRef =
        firebaseFirestore.collection('room').doc(roomID);
    Map<String, dynamic> roomData = {
      'roomID': roomID,
      'participants': participants,
      'messageID': message?.id,
    };
    await roomRef.set(roomData);
  }
}
