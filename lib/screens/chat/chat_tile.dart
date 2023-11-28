import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/utilize/room_id.dart';
import 'package:studyssey/utilize/user_model.dart';
import 'chat_room.dart';

class ChatTile extends StatefulWidget {
  const ChatTile({super.key, required this.userModel});

  final UserModel userModel;

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    String fullName =
        '${widget.userModel.firstName} ${widget.userModel.lastName}';
    String time = DateFormat.jm().format(widget.userModel.timestamp);
    return ListTile(
      onTap: () {
        String otherUserID = widget.userModel.uid;
        String currentUserID = FirebaseAuth.instance.currentUser!.uid;
        String roomID = generateRoomID(currentUserID, otherUserID);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatRoom(
              user: widget.userModel,
              roomID: roomID,
            ),
          ),
        );
      },
      leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.userModel.profileImage),
        radius: 30,
      ),
      title: Text(fullName, overflow: TextOverflow.ellipsis),
      titleTextStyle: GoogleFonts.manrope(
        fontSize: 16.66,
        fontWeight: FontWeight.bold,
        color: textColor1,
      ),
      trailing: Text(
        time,
        style: GoogleFonts.manrope(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: textColor4,
        ),
      ),
    );
  }
}
