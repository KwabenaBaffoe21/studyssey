// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/utilize/next_page.dart';
import 'package:studyssey/utilize/room.dart';
import 'package:studyssey/utilize/user_model.dart';

Widget buildUser(UserModel user, BuildContext context, String route) {
  String time = DateFormat.jm().format(user.timestamp);
  RoomCollection roomCollection = RoomCollection();
  return ListTile(
    onTap: () async {
      String? currentUserID = await roomCollection.fetchUsers();
      String roomID = await roomCollection.room();
      List<String> participantsIDs = [user.uid, currentUserID!];
      await roomCollection.createRoom(roomID, participantsIDs);
      nextPage(context, route);
    },
    leading: CircleAvatar(
      backgroundImage: NetworkImage(user.profileImage),
      maxRadius: 30,
      minRadius: 30,
    ),
    title: Text(
      user.fullname,
      style: GoogleFonts.manrope(
          fontSize: 13.33, fontWeight: FontWeight.w500, color: textColor1),
      overflow: TextOverflow.ellipsis,
    ),
    subtitle: Text(
      user.content,
      style: GoogleFonts.manrope(
          fontSize: 13.33, fontWeight: FontWeight.w500, color: textColor1),
    ),
    trailing: Text(
      time,
      style: GoogleFonts.manrope(
          fontSize: 13.33, fontWeight: FontWeight.w500, color: textColor1),
    ),
  );
}
