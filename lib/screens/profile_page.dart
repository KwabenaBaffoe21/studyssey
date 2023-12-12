import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/screens/courses/course_page.dart';
import '../../constant.dart';
import 'chat/chat_page.dart';
import 'homepage/home_page.dart';
import 'notification_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static String routeName = 'ProfilePage';

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Widget> destinationScreens = [
    const CoursePage(),
    const ChatPage(),
    const HomePage(),
    const NotificationPage(),
    const ProfilePage()
  ];
  int currentIndex = 0;
  String currentUser = FirebaseAuth.instance.currentUser!.uid;
  @override
  Widget build(BuildContext context) {
    CollectionReference student =
        FirebaseFirestore.instance.collection('student');
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
          child: FutureBuilder<DocumentSnapshot>(
            future: student.doc(currentUser).get(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ScaffoldMessenger(
                  child: SnackBar(
                    duration: const Duration(seconds: 5),
                    backgroundColor: Theme.of(context).primaryColor,
                    content: Text(
                      'An Error occurred when fetching the user data',
                      style: GoogleFonts.manrope(
                        fontSize: 13.33,
                        fontWeight: FontWeight.w500,
                        color: textColor2,
                      ),
                    ),
                  ),
                );
              } else if (snapshot.hasData && !snapshot.data!.exists) {
                return ScaffoldMessenger(
                  child: SnackBar(
                    duration: const Duration(seconds: 5),
                    backgroundColor: Theme.of(context).primaryColor,
                    content: Text(
                      'Document does not exist',
                      style: GoogleFonts.manrope(
                        fontSize: 13.33,
                        fontWeight: FontWeight.w500,
                        color: textColor2,
                      ),
                    ),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              var studentData = snapshot.data!;
              String fullName =
                  '${studentData['firstName']} ${studentData['lastName']}';
              return Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(studentData['profileImage']),
                        radius: 28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      fullName,
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
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    studentData['faculty'].toUpperCase(),
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 11.11,
                                      color: textColor4,
                                    ),
                                    softWrap: true,
                                    textAlign: TextAlign.right,
                                  ),
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
                                studentData['departments'].toUpperCase(),
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
                                studentData['personalEmail'],
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
                                  studentData['city'],
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
                                studentData['Nationality'],
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 11, horizontal: 25.5),
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
                    padding: const EdgeInsets.only(
                        left: 24, right: 20, bottom: 11.11),
                    child: Wrap(
                      runSpacing: 5,
                      spacing: 7.78,
                      direction: Axis.horizontal,
                      children: [
                        ...(studentData['interests'] as List<dynamic>)
                            .map((interest) {
                          return Container(
                            width: interest.toString().length * 6.0,
                            height: 26.89,
                            decoration: BoxDecoration(
                              color: color6,
                              borderRadius: BorderRadius.circular(4.44),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7.78,
                              vertical: 4.44,
                            ),
                            child: Text(
                              interest.toString(),
                              style: GoogleFonts.manrope(
                                fontSize: 11.11,
                                fontWeight: FontWeight.w500,
                                color: textColor4,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          );
                        })
                      ],
                    ),
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
                                studentData['description'],
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
                                theme:
                                    const SvgTheme(currentColor: buttonColor),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
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
