import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:studyssey/components/customsearchbar.dart';
import 'package:studyssey/components/drawer_screen.dart';
import 'package:studyssey/screens/chat/components/filter_buttons.dart';
import 'package:studyssey/services/firebase_provider.dart';
import 'package:studyssey/utilize/user_model.dart';
import '../../constant.dart';
import '../courses/course_page.dart';
import '../homepage/home_page.dart';
import '../notification_page.dart';
import '../profile_page.dart';
import 'chat_tile.dart';
import 'new_chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  static String routeName = 'ChatPage';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final userData = [
    UserModel(
      uid: '3iblquexalP3A2Y4Naqg',
      firstName: 'Morrison Boakye',
      lastName: 'Boamah',
      timestamp: DateTime.now(),
      profileImage:
          'https://firebasestorage.googleapis.com/v0/b/studyssey-d4df3.appspot.com/o/images%2Fprofiles%2Fprofile2.png?alt=media&token=96495803-ddda-4348-a044-141a89c42833',
      isOnline: true,
      mobileNumber: '0240468130',
      address: 'Kasoa, Nyanyanor',
      studentEmail: '040919751@live.gctu.edu.gh',
      indexNumber: '040919751',
    ),
    UserModel(
      uid: 'nWMR5ihkHZ4mhovaNlbG',
      firstName: 'Prince Baah',
      lastName: 'Dadzie',
      timestamp: DateTime.now(),
      profileImage:
          'https://firebasestorage.googleapis.com/v0/b/studyssey-d4df3.appspot.com/o/images%2Fprofiles%2Fprofile4.png?alt=media&token=56a20488-9768-4473-9570-ae32d766ea9a',
      isOnline: false,
      mobileNumber: '0240468131',
      address: 'Sweduru',
      studentEmail: '040919752@live.gctu.edu.gh',
      indexNumber: '040919752',
    ),
  ];
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
  void initState() {
    super.initState();
    Provider.of<FirebaseProvider>(context, listen: false).getAllUsers();
  }

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
              Consumer<FirebaseProvider>(
                builder: (context, value, index) => ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: value.users.length,
                  itemBuilder: (context, index) => value.users[index].uid !=
                          FirebaseAuth.instance.currentUser?.uid
                      ? ChatTile(
                          userModel: value.users[index],
                        )
                      : const Padding(padding: EdgeInsets.zero),
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.transparent,
                      height: 5,
                    );
                  },
                ),
              ),
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
              return  const NewChat();
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
