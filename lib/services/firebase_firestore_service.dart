import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../utilize/message_model.dart';

class FirebaseFirestoreService {
  static final firestore = FirebaseFirestore.instance;

  

  static Future<void> addTextMessage({
    required String content,
    required String receiverID,
  }) async {
    final message = Messages(
      content: content,
      messageType: MessageType.text,
      receiverID: receiverID,
      senderID: FirebaseAuth.instance.currentUser!.uid,
      sentTime: DateTime.now(),
    );
    await _addMessageToChat(receiverID, message);
  }

  static Future<void> _addMessageToChat(
    String receiverID,
    Messages messages,
  ) async {
    await firestore
        .collection('chat')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('room')
        .doc('receiverID')
        .collection('messages')
        .add(messages.toJson());

    await firestore
        .collection('chat')
        .doc('receiverID')
        .collection('room')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('messages')
        .add(messages.toJson());
  }
}
