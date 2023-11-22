import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/utilize/user_model.dart';
import 'package:intl/intl.dart';

class ChatTile extends StatefulWidget {
  const ChatTile({
    super.key,
    required this.user,
  });
  final UserModel? user;
  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  @override
  Widget build(BuildContext context) {
    String time = DateFormat.jm().format(widget.user!.timestamp);
    return ListTile(
      onTap: (){},
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(widget.user!.profileImage),
        backgroundColor: color5,
      ),
      title: Text(
        widget.user!.fullName,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: textColor1, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        widget.user!.content,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: textColor1),
      ),
      trailing: Text(
        time,
        style: GoogleFonts.manrope(
          fontSize: 8.89,
          fontWeight: FontWeight.w500,
          color: textColor4,
        ),
      ),
    );
  }
}
