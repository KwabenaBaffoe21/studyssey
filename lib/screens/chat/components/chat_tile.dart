import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/constant.dart';
import '../../../utilize/usermodel.dart';

class ChatTile extends StatefulWidget {
  const ChatTile({
    super.key,
    required this.user,
    required this.route,
    this.totalMessage,
  });

  final UserModel user;
  final String? totalMessage;
  final String route;

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {
  List<Widget>chatDetails = [

  ];
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.pushReplacementNamed(context, widget.route);
      },
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        backgroundImage: NetworkImage(widget.user.profileImage),
        radius: 39,
      ),
      title: Text(
        widget.user.fullName,
        style: GoogleFonts.manrope(
          fontSize: 13.33,
          fontWeight: FontWeight.w700,
          color: textColor1,
        ),
      ),
      subtitle: Text(
        widget.user.content,
        style: GoogleFonts.manrope(
          fontWeight: FontWeight.w500,
          fontSize: 13.33,
          color: textColor1,
        ),
      ),
      trailing: widget.totalMessage != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.user.timeStamp as String,
                  style: GoogleFonts.manrope(
                    fontSize: 8.89,
                    fontWeight: FontWeight.w500,
                    color: textColor4,
                  ),
                ),
                Badge(
                  backgroundColor: color1,
                  smallSize: 21.11,
                  label: Text(
                    widget.totalMessage ?? '',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.11,
                      color: textColor2,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                ),
              ],
            )
          : Text(
              DateFormat('HH:mm').format(widget.user.timeStamp),
              style: GoogleFonts.manrope(
                fontSize: 8.89,
                fontWeight: FontWeight.w500,
                color: textColor4,
              ),
            ),
    );
  }
}
