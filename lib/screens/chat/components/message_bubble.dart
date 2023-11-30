import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/utilize/message_model.dart';
import 'package:studyssey/utilize/user_model.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.messages,
    required this.isMe,
    required this.isImage,
    required this.userModel,
  });

  final Messages messages;
  final bool isMe;
  final bool isImage;
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    String timeSent = DateFormat.jm().format(messages.sentTime);
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Row(
        children: [
          Container(
            width: 30.19,
            height: 30.19,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.44),
              image: DecorationImage(
                  image: NetworkImage(userModel.profileImage),
                  fit: BoxFit.cover),
            ),
          ),
          Bubble(
            alignment: isMe ? Alignment.centerLeft : Alignment.centerRight,
            nip: isMe ? BubbleNip.leftTop : BubbleNip.rightTop,
            color: isMe ? color15 : color13,
            radius: const Radius.circular(4.44),
            margin: const BubbleEdges.only(
              top: 10,
              bottom: 10,
              left: 10,
              right: 10,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                messages.message,
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
            ]),
          ),
        ],
      ),
    );
  }
}
