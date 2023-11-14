import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  static String routeName = 'ChatRoom';

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const degree = 45;
    const angle = (degree * pi) / 180;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: splashScreen,
        foregroundColor: textColor2,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: ColorFiltered(
            colorFilter: const ColorFilter.mode(textColor2, BlendMode.srcIn),
            child: SvgPicture.asset(
              kBackButtonIcon,
              height: 31,
              width: 31,
            ),
          ),
        ),
        title: Row(
          children: [
            const Badge(
              backgroundColor: badgeColor,
              alignment: Alignment.topRight,
              smallSize: 12,
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundImage: AssetImage(kProfileImage2),
                radius: 23,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Morrison Boakye Boamah',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700,
                        fontSize: 13.33,
                        color: textColor2),
                  ),
                  Text(
                    'online',
                    style: GoogleFonts.manrope(
                        fontSize: 11.11, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/chatroom_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          children: [

          ],
        ),
      ),
      bottomSheet: TextField(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        keyboardType: TextInputType.multiline,
        cursorHeight: 13.33,
        style: GoogleFonts.manrope(
            fontWeight: FontWeight.w500,
            fontSize: 13.33,
            color: textColor1),
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Message',
          hintStyle: GoogleFonts.manrope(
              fontSize: 13.33,
              fontWeight: FontWeight.w500,
              color: textColor3),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Transform.rotate(
              angle: angle,
              child: SvgPicture.asset(
                kMessageIcon,
                height: 31,
                width: 31,
                theme: const SvgTheme(currentColor: buttonColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
