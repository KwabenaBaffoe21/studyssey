import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:studyssey/screens/chat/chat_page.dart';
import 'package:studyssey/utilize/user_model.dart';

import '../../constant.dart';
import 'chat_message.dart';
import 'components/customtextfield.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key, required this.user, required this.roomID});

  final UserModel user;
  final String roomID;

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final textController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: customAppBar(context, widget.user),
        body: Column(
          children: [
            ChatMessages(
              receiverID: widget.user.uid,
            ),
          ],
        ),
        bottomSheet: BottomSheet(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: CustomTextField(textController: textController, roomID: widget.roomID, userModel: widget.user,),
            );
          },
          onClosing: () {},
        ),
      ),
    );
  }
}

AppBar customAppBar(context, UserModel user) {
  String fullName = user.firstName + user.lastName;
  String lastSeen = DateFormat.jm().format(DateTime.now());
  return AppBar(
    toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
    centerTitle: Theme.of(context).appBarTheme.centerTitle,
    titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
    elevation: Theme.of(context).appBarTheme.elevation,
    scrolledUnderElevation:
        Theme.of(context).appBarTheme.scrolledUnderElevation,
    titleSpacing: 5,
    leading: IconButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ChatPage(),
          ),
        );
      },
      icon: const Icon(
        Icons.arrow_back,
        size: 31,
        color: color11,
      ),
    ),
    title: Row(
      children: [
        Badge(
          backgroundColor: user.isOnline ? badgeColor : color5,
          smallSize: 12,
          child: CircleAvatar(
            backgroundImage: NetworkImage(user.profileImage),
            radius: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fullName,
                style: GoogleFonts.manrope(
                  fontSize: 16.66,
                  fontWeight: FontWeight.w700,
                  color: textColor1,
                ),
              ),
              Text(
                user.isOnline ? 'online' : 'Last seen: $lastSeen',
                style: GoogleFonts.manrope(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: textColor1,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

