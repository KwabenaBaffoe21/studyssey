class Messages {
  final String senderID;
  final String receiverID;
  final String content;
  final DateTime sentTime;
  final MessageType messageType;

  const Messages(
      {required this.content,
      required this.messageType,
      required this.receiverID,
      required this.senderID,
      required this.sentTime});

  Map<String,dynamic> toJson() => {
    'receiverID':receiverID,
    'senderID': senderID,
    'content': content,
    'sentTime': sentTime,
    'MessageType': messageType.toJson()
  };
}

enum MessageType {
  text,
  image;
  String toJson() => name;
}
