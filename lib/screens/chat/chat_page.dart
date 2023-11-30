import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studyssey/components/customsearchbar.dart';
import 'package:studyssey/components/drawer_screen.dart';
import 'package:studyssey/screens/chat/chat_room.dart';
import 'package:studyssey/screens/chat/components/filter_buttons.dart'
    as filter;
import 'package:studyssey/utilize/user_model.dart';
import '../../constant.dart';
import '../courses/course_page.dart';
import '../homepage/home_page.dart';
import '../notification_page.dart';
import '../profile_page.dart';
import 'select_profile.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static String routeName = 'ChatPage';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  var searchName = '';

  int currentIndex = 0;
  List<Widget> destinationScreens = [
    const CoursePage(),
    const ChatPage(),
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
        title: const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 16), child: Text('Chat')),
        centerTitle: Theme.of(context).appBarTheme.centerTitle,
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
                  searchName: searchName,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    top: 15, bottom: 12.11, left: 25.56, right: 25.56),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    filter.Filter(
                      text: 'All',
                      top: -7,
                      bottom: 7,
                      left: -7,
                      right: 15,
                    ),
                    filter.Filter(
                      text: 'Personal',
                      top: -7,
                      bottom: 7,
                      left: -7,
                      right: 10,
                    ),
                    filter.Filter(
                      text: 'Group',
                      top: -7,
                      bottom: 7,
                      left: -7,
                      right: 10,
                    ),
                  ],
                ),
              ),
              StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('room').snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Container();
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var data = snapshot.data!.docs[index];
                      List<dynamic> participants = data['participants'];

                      String currentUserUid =
                          FirebaseAuth.instance.currentUser!.uid;

                      String otherUid = participants
                          .firstWhere((uid) => uid != currentUserUid);

                      return FutureBuilder<DocumentSnapshot>(
                        future: FirebaseFirestore.instance
                            .collection('student')
                            .doc(otherUid)
                            .get(),
                        builder: (context,
                            AsyncSnapshot<DocumentSnapshot> studentSnapshot) {
                          if (studentSnapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          if (studentSnapshot.hasError) {
                            return Text('Error: ${studentSnapshot.error}');
                          }

                          if (!studentSnapshot.hasData ||
                              !studentSnapshot.data!.exists) {
                            return const Text('User not found');
                          }

                          var studentData = studentSnapshot.data!;
                          String profileImage = studentData['profileImage'];
                          String firstName = studentData['firstName'];
                          String lastName = studentData['lastName'];

                          UserModel userModel = UserModel(
                            uid: studentData['uid'] ?? '',
                            firstName: studentData['firstName'] ?? '',
                            lastName: studentData['lastName'] ?? '',
                            timestamp: studentData['timestamp']?.toDate() ??
                                DateTime.now(),
                            profileImage: studentData['profileImage'] ?? '',
                            mobileNumber: studentData['mobileNumber'] ?? '',
                            address: studentData['address'] ?? '',
                            studentEmail:
                                studentData['studentEmail'] as String? ?? '',
                            indexNumber: studentData['indexNumber'] ?? '',
                            isOnline: studentData['isOnline'] ?? false,
                          );

                          return ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChatRoom(
                                    roomID: data['roomID'],
                                    userModel: userModel,
                                  ),
                                ),
                              );
                            },
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(profileImage),
                              backgroundColor: color5,
                              radius: 28,
                            ),
                            title: Text(
                              '$firstName $lastName',
                              style: GoogleFonts.manrope(
                                fontSize: 16.66,
                                fontWeight: FontWeight.bold,
                                color: textColor1,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          );
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 5,
                      );
                    },
                    itemCount: snapshot.data!.docs.length,
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
              if (kDebugMode) {
                print('THIS IS THE CURRENT INDEX: $currentIndex');
              }
              if (kDebugMode) {
                print('THIS IS THE INDEX VALUE: $index');
              }
            });
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => destinationScreens[index],
              ),
            );
          },
          currentIndex: currentIndex,
          type: Theme.of(context).bottomNavigationBarTheme.type,
          showUnselectedLabels:
              Theme.of(context).bottomNavigationBarTheme.showUnselectedLabels,
          showSelectedLabels:
              Theme.of(context).bottomNavigationBarTheme.showSelectedLabels,
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          unselectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          selectedLabelStyle:
              Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle,
          unselectedLabelStyle:
              Theme.of(context).bottomNavigationBarTheme.unselectedLabelStyle,
          iconSize: 31.89,
          elevation: Theme.of(context).bottomNavigationBarTheme.elevation,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kCourseIcon), label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kSendIcon), label: 'Register'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kHomeIcon), label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kNotificationIcon), label: 'Result'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(kProfileIcon), label: 'Profile'),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const SelectProfile();
            }),
          );
        },
        backgroundColor: buttonColor,
        elevation: 5,
        shape: const CircleBorder(eccentricity: 1.0),
        child: const Icon(
          Icons.add,
          size: 31,
        ),
      ),
    );
  }
}
