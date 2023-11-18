import 'package:flutter/material.dart';
import 'package:studyssey/screens/chat/components/chatroom.dart';
import 'package:studyssey/utilize/build_user.dart';
import 'package:studyssey/utilize/read_user.dart';
import 'package:studyssey/utilize/user_model.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UserModel>>(
      stream: readUser(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          final List<UserModel> users = snapshot.data!;

          return ListView(
            shrinkWrap: true,
            children: users
                .map(
                  (user) => buildUser(user, context, ChatRoom.routeName),
                )
                .toList(),
          );
        } else {
          return const Text('No data available');
        }
      },
    );
  }
}
