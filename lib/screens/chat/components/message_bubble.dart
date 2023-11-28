import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/constant.dart';
import '../../../utilize/message_model.dart';
import 'dart:ui' as ui;

class MessageBubble extends StatelessWidget {
  const MessageBubble(
      {super.key,
      required this.messages,
      required this.isMe,
      required this.isImage});

  final Messages messages;
  final bool isMe;
  final bool isImage;

  @override
  Widget build(BuildContext context) {
    String timeSent = DateFormat.jm().format(messages.sentTime);
    return Align(
      alignment: isMe ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        margin: const EdgeInsets.only(
          top: 10,
          right: 20,
          left: 10,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: isMe ? color15 : color14,
          borderRadius: isMe
              ? const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              messages.content,
              style: GoogleFonts.manrope(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textColor1,
              ),
              softWrap: true,
            ),
            Text(
              timeSent,
              style: GoogleFonts.manrope(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: textColor1,
              ),
              textAlign: ui.TextAlign.right,
            )
          ],
        ),
      ),
    );
  }
}
