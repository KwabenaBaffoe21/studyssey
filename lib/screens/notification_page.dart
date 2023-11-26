import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/constant.dart';
import 'package:studyssey/screens/profile_page.dart';

import 'chat/chat_page.dart';
import 'courses/course_page.dart';
import 'homepage/home_page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  static String routeName = 'NotificationPage';

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> destinationScreens = [
      const CoursePage(),
       ChatPage(),
      const HomePage(),
      const NotificationPage(),
      const ProfilePage()
    ];
    int currentIndex = 0;
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: Theme.of(context).bottomNavigationBarTheme.elevation,
        landscapeLayout:
            Theme.of(context).bottomNavigationBarTheme.landscapeLayout,
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        iconSize: 31.89,
        currentIndex: currentIndex,
        type: Theme.of(context).bottomNavigationBarTheme.type,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            print('THIS IS THE CURRENT INDEX: $currentIndex');
            print('THIS IS THE INDEX VALUE: $index');
          });
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => destinationScreens[index]),
              (route) => true);
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(kCourseIcon),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(kSendIcon),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(kHomeIcon), label: 'Home'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(kNotificationIcon),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(kProfileIcon),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
