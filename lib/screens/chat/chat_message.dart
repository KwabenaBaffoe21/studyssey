import 'package:flutter/material.dart';
import 'package:studyssey/screens/chat/components/message_bubble.dart';
import 'package:studyssey/utilize/message_model.dart';

class ChatMessages extends StatefulWidget {
  ChatMessages({super.key, required this.receiverID});

  final String receiverID;
  final messages = [
    Messages(
      content: 'The game was serious, bro!!',
      messageType: MessageType.text,
      receiverID: '2',
      senderID: 'JHqy0dhMBDPnOcBnSnLnNjjkHWN2',
      sentTime: DateTime.now(),
    ),
    Messages(
      content: 'How far?',
      messageType: MessageType.text,
      receiverID: '2',
      senderID: 'JHqy0dhMBDPnOcBnSnLnNjjkHWN2',
      sentTime: DateTime.now(),
    ),
  ];

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.messages.length,
        itemBuilder: (context, index) {
          final isMe = widget.receiverID != widget.messages[index].senderID;
          final isTextMessage =
              widget.messages[index].messageType == MessageType.text;
          return isTextMessage
              ? MessageBubble(
                  messages: widget.messages[index], isMe: isMe, isImage: false)
              : MessageBubble(
                  messages: widget.messages[index], isMe: isMe, isImage: true);
        });
  }
}
