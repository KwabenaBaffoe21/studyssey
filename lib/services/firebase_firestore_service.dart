import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../utilize/message_model.dart';

class FirebaseFirestoreService {
  static final firestore = FirebaseFirestore.instance;

  static Future<void> addTextMessage({
    required String content,
    required String roomID,
  }) async {
    String senderID = FirebaseAuth.instance.currentUser!.uid;
    final message = Messages(
      message: content,
      messageType: MessageType.text,
      roomID: roomID,
      senderID: senderID,
      sentTime: DateTime.now(),
    );
    await _addMessageToChat(roomID, senderID, message);
  }

  static Future<void> _addMessageToChat(
    String roomID,
    String senderID,
    Messages messages,
  ) async {
    await firestore
        .collection('chat')
        .doc(roomID)
        .collection('messages')
        .doc(senderID)
        .set(messages.toJson());

    /*await firestore
        .collection('chat')
        .doc('receiverID')
        .collection('room')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('messages')
        .add(messages.toJson());*/
  }
}
