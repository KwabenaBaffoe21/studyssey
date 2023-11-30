import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Future<void> getMessages() async {
  StreamBuilder<QuerySnapshot>(
    stream: FirebaseFirestore.instance.collection('messages').snapshots(),
    builder:
        (BuildContext context, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const CircularProgressIndicator();
      } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
        return const Text('There is nothing to see here');
      } else {
        ListView.separated(
            itemBuilder: (context, index) {
              var data = snapshot.data!.docs[index];
              return ListTile(
                title: Text(data['messages']),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 5,
              );
            },
            itemCount: snapshot.data!.docs.length);
      }
      return Container();
    },
  );
}
