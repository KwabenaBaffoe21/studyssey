class Messages {
  final String roomID;
  final String senderID;
  final String message;
  final DateTime sentTime;
  final MessageType messageType;

  const Messages(
      {required this.message,
      required this.messageType,
      required this.senderID,
      required this.roomID,
      required this.sentTime});

  Map<String, dynamic> toJson() => {
        'senderID': senderID,
        'roomID': roomID,
        'message': message,
        'sentTime': sentTime,
        'MessageType': messageType.toJson()
      };
}

enum MessageType {
  text,
  image;

  String toJson() => name;
}
