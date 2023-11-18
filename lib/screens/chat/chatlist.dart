import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/components/customsearchbar.dart';
import 'package:studyssey/components/drawer_screen.dart';
import 'package:studyssey/screens/chat/components/chat_tile.dart';
import 'package:studyssey/screens/chat/components/filter_buttons.dart';
import '../../constant.dart';
import '../courses/coursepage.dart';
import '../homepage/homepage.dart';
import '../notificationpage.dart';
import '../profilepage.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  static String routeName = 'ChatPage';

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  int currentIndex = 0;
  List<Widget> destinationScreens = [
    const CoursePage(),
    const ChatList(),
    const HomePage(),
    const NotificationPage(),
    const ProfilePage()
  ];
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          DrawerScreen(upperContent: upperContent, lowerContent: lowerContent),
      appBar: AppBar(
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        titleTextStyle: Theme.of(context)
            .appBarTheme
            .titleTextStyle
            ?.copyWith(color: textColor1),
        elevation: Theme.of(context).appBarTheme.elevation,
        title: const Text('Chat'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.56, top: 11, right: 25.56),
                child: CustomSearchBar(
                  textEditingController: textEditingController,
                  title: 'Search',
                  color: color6,
                  imagePath: kSearchIcon,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    top: 15, bottom: 12.11, left: 25.56, right: 25.56),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Filter(
                      text: 'All',
                      top: -7,
                      bottom: 7,
                      left: -7,
                      right: 15,
                    ),
                    Filter(
                      text: 'Personal',
                      top: -7,
                      bottom: 7,
                      left: -7,
                      right: 10,
                    ),
                    Filter(
                      text: 'Group',
                      top: -7,
                      bottom: 7,
                      left: -7,
                      right: 10,
                    ),
                  ],
                ),
              ),
              const ChatTile()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => destinationScreens[index]),
            );
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle:
              GoogleFonts.manrope(fontWeight: FontWeight.w500, fontSize: 6.67),
          selectedLabelStyle: GoogleFonts.manrope(
              fontWeight: FontWeight.w500, fontSize: 6.67, color: buttonColor),
          selectedItemColor: buttonColor,
          iconSize: 31.89,
          elevation: 5,
          backgroundColor: textColor2,
          items: [
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    currentIndex == 0 ? buttonColor : color5, BlendMode.srcIn),
                child: SvgPicture.asset(
                  kCourseIcon,
                  theme: SvgTheme(
                      currentColor: currentIndex == 0 ? buttonColor : color5),
                ),
              ),
              label: 'Dashboard',
              activeIcon: SvgPicture.asset(kCourseAltIcon),
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    currentIndex == 1 ? buttonColor : color5, BlendMode.srcIn),
                child: SvgPicture.asset(kSendIcon),
              ),
              label: 'Register',
              activeIcon: SvgPicture.asset(kSendAltIcon),
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kHomeIcon), label: 'Home'),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    currentIndex == 3 ? buttonColor : color5, BlendMode.srcIn),
                child: SvgPicture.asset(kNotificationIcon),
              ),
              label: 'Result',
              activeIcon: SvgPicture.asset(kNotificationAltIcon),
            ),
            BottomNavigationBarItem(
              icon: ColorFiltered(
                colorFilter: ColorFilter.mode(
                    currentIndex == 4 ? buttonColor : color5, BlendMode.srcIn),
                child: SvgPicture.asset(kProfileIcon),
              ),
              label: 'Profile',
              activeIcon: SvgPicture.asset(kProfileAltIcon),
            )
          ]),
    );
  }
}
