import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/screens/courses/coursepage.dart';
import '../../constant.dart';
import 'chat/chatlist.dart';
import 'homepage/homepage.dart';
import 'notificationpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static String routeName = 'ProfilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> destinationScreens = [
      const CoursePage(),
      const ChatList(),
      const HomePage(),
      const NotificationPage(),
      const ProfilePage()
    ];
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 53.92,
        backgroundColor: color7,
        foregroundColor: textColor1,
        leading: GestureDetector(
          onTap: () =>
              Navigator.pushReplacementNamed(context, CoursePage.routeName),
          child: SvgPicture.asset(
            kBackButtonIcon,
            width: 31.68,
            height: 31.7,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 16),
          child: Text(
            'Profile',
            style: GoogleFonts.manrope(
                fontWeight: FontWeight.w500, fontSize: 13.33),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(kCurrentProfile),
                    radius: 62,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Emmanuel Baffoe Appiah-Ofori',
                  softWrap: true,
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700,
                      fontSize: 13.33,
                      color: textColor1),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 25.11),
                child: Text(
                  'Student',
                  softWrap: true,
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.11,
                      color: textColor1),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.78),
                child: Container(
                  width: 314.44,
                  height: 220.22,
                  decoration: const BoxDecoration(
                    color: color3,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.44),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.67, vertical: 11.11),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Info',
                          style: GoogleFonts.manrope(
                              fontSize: 13.33,
                              fontWeight: FontWeight.w700,
                              color: textColor1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Faculty:',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 11.11,
                                color: textColor3,
                              ),
                            ),
                            Text(
                              'faculty of computing and\ninformation systems'
                                  .toUpperCase(),
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 11.11,
                                color: textColor4,
                              ),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Department:',
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: textColor3,
                            ),
                          ),
                          Text(
                            'information technology'.toUpperCase(),
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: textColor4,
                            ),
                            softWrap: true,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Contact',
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w700,
                            fontSize: 13.33,
                            color: textColor1,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Email:',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 11.11,
                                color: textColor3),
                          ),
                          Text(
                            'emmanuelbaffoeappiahofori@gmail.com',
                            style: GoogleFonts.manrope(
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500,
                                color: textColor4),
                            softWrap: true,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'City/Town:',
                              style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.11,
                                  color: textColor3),
                            ),
                            Text(
                              'Accra',
                              style: GoogleFonts.manrope(
                                  fontSize: 11.11,
                                  fontWeight: FontWeight.w500,
                                  color: textColor4),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nationality:',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w500,
                                fontSize: 11.11,
                                color: textColor3),
                          ),
                          Text(
                            'Ghanaian',
                            style: GoogleFonts.manrope(
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500,
                                color: textColor4),
                            textHeightBehavior: const TextHeightBehavior(
                                leadingDistribution:
                                    TextLeadingDistribution.proportional),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 25.5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Interests',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w700,
                        fontSize: 13.33,
                        color: textColor1),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 24, right: 20, bottom: 11.11),
                child: Wrap(
                    runSpacing: 5,
                    spacing: 7.78,
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        width: 124.56,
                        height: 26.89,
                        decoration: BoxDecoration(
                          color: color6,
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.78, vertical: 4.44),
                        child: Text(
                          'Artificial Intelligence',
                          style: GoogleFonts.manrope(
                              fontSize: 11.11,
                              fontWeight: FontWeight.w500,
                              color: textColor4),
                        ),
                      ),
                      Container(
                        width: 178.56,
                        height: 26.89,
                        decoration: BoxDecoration(
                          color: color6,
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.78, vertical: 4.44),
                        child: Text(
                          'Database Management System',
                          style: GoogleFonts.manrope(
                              fontSize: 11.11,
                              fontWeight: FontWeight.w500,
                              color: textColor4),
                        ),
                      ),
                      Container(
                        width: 116.56,
                        height: 26.89,
                        decoration: BoxDecoration(
                          color: color6,
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.78, vertical: 4.44),
                        child: Text(
                          'Operating Systems',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: textColor4),
                        ),
                      ),
                      Container(
                        width: 189.56,
                        height: 26.89,
                        decoration: BoxDecoration(
                          color: color6,
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.78, vertical: 4.44),
                        child: Text(
                          'Web development & Architecture',
                          style: GoogleFonts.manrope(
                              fontSize: 11.11,
                              fontWeight: FontWeight.w500,
                              color: textColor4),
                        ),
                      ),
                      Container(
                        width: 151.11,
                        height: 26.89,
                        decoration: BoxDecoration(
                          color: color6,
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.78, vertical: 4.44),
                        child: Text(
                          'Visual Basic development',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: textColor4),
                        ),
                      ),
                      Container(
                        width: 151.11,
                        height: 26.89,
                        decoration: BoxDecoration(
                          color: color6,
                          borderRadius: BorderRadius.circular(4.44),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7.78, vertical: 4.44),
                        child: Text(
                          'Visual C# Development',
                          style: GoogleFonts.manrope(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.11,
                              color: textColor4),
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 22.78, vertical: 11.11),
                child: Container(
                  width: 314.44,
                  height: 97.78,
                  decoration: BoxDecoration(
                    color: color3,
                    borderRadius: BorderRadius.circular(4.44),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.67, vertical: 11.11),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Description',
                            style: GoogleFonts.manrope(
                                fontSize: 13.33,
                                fontWeight: FontWeight.w700,
                                color: textColor1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'A self-motivated, free-spirited goal achiever',
                            softWrap: true,
                            style: GoogleFonts.manrope(
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500,
                                color: textColor3),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            kEditIcon,
                            width: 18,
                            height: 18,
                            theme: const SvgTheme(currentColor: buttonColor),
                          ),
                        ),
                      )
                    ],
                  ),
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
