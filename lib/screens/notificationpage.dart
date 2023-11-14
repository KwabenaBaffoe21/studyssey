import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  static String routeName = 'NotificationPage';

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 53,
        backgroundColor: scaffold,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset(
            kBackButtonIcon,
            height: 31.7,
            width: 31.7,
            theme: const SvgTheme(currentColor: textColor1),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 16),
          child: Text(
            'Notifications',
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w500,
              fontSize: 13.33,
              color: textColor1,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 168.58, left: 77.5, right: 77.5, bottom: 314.5),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SvgPicture.asset(
                  'images/empty.svg',
                  width: 200.7,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 33),
                child: Text(
                  'No notifications yet',
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.33,
                      color: textColor4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
