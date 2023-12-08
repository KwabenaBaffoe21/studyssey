import 'package:bubble/bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/utilize/user_model.dart';

class ChatMessages extends StatefulWidget {
  const ChatMessages(
      {super.key, required this.userModel, required this.roomID});

  final UserModel userModel;
  final String roomID;

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {
  late String timeSent =
      DateFormat.jm().format(DateTime.now()); // Declare timeSent variable

  @override
  void initState() {
    super.initState();
    // Calculate timeSent only once when the widget is initialized
    timeSent;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('messages')
          .where('roomID', isEqualTo: widget.roomID)
          .orderBy('timestamp', descending: true)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container();
        } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Container();
        }
        return ListView.builder(
          shrinkWrap: true,
          reverse: true,
          itemBuilder: (context, index) {
            var data = snapshot.data!.docs[index];
            String otherUser = data['uid'];
            String currentUser = FirebaseAuth.instance.currentUser?.uid ?? '';

            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: otherUser == currentUser
                  ? Bubble(
                      alignment: Alignment.centerRight,
                      nip: BubbleNip.rightTop,
                      color: color14,
                      radius: const Radius.circular(4.44),
                      margin: const BubbleEdges.all(10),
                      child: _buildMessageContent(data),
                    )
                  : Row(
                      children: [
                        Container(
                          width: 30.19,
                          height: 30.19,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.44),
                            image: DecorationImage(
                              image:
                                  NetworkImage(widget.userModel.profileImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Bubble(
                          alignment: Alignment.centerLeft,
                          nip: BubbleNip.leftTop,
                          color: color15,
                          radius: const Radius.circular(4.44),
                          margin: const BubbleEdges.all(10),
                          child: _buildMessageContent(data),
                        ),
                      ],
                    ),
            );
          },
          itemCount: snapshot.data!.docs.length,
        );
      },
    );
  }

  Widget _buildMessageContent(QueryDocumentSnapshot<Object?> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data['message'],
          style: GoogleFonts.manrope(
            fontSize: 16.66,
            fontWeight: FontWeight.w500,
            color: textColor1,
          ),
        ),
        Text(
          timeSent,
          style: GoogleFonts.manrope(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: textColor1,
          ),
        ),
      ],
    );
  }
}
