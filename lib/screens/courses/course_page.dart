import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyssey/components/drawer_screen.dart';
import 'package:studyssey/components/custompageindicator.dart';
import 'package:studyssey/components/slide_show.dart';
import 'package:studyssey/components/vertical_carousel.dart';
import 'package:studyssey/screens/chat/chat_page.dart';
import 'package:studyssey/screens/courses/see_more.dart';
import 'package:studyssey/screens/homepage/home_page.dart';
import 'package:studyssey/screens/notification_page.dart';
import 'package:studyssey/screens/profile_page.dart';
import '../../components/customsearchbar.dart';
import '../../constant.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  static String routeName = 'CoursePage';

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  TextEditingController textEditingController = TextEditingController();
  PageController pageController = PageController();
  int currentIndex = 0;
  List<Widget> destinationScreens = [
    const CoursePage(),
     ChatPage(),
    const HomePage(),
    const NotificationPage(),
    const ProfilePage()
  ];

  @override
  void dispose() {
    textEditingController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        drawer: DrawerScreen(
            upperContent: upperContent, lowerContent: lowerContent),
        appBar: AppBar(
          title: const Text('Courses'),
          titleTextStyle: Theme.of(context)
              .appBarTheme
              .titleTextStyle
              ?.copyWith(color: textColor1),
          toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
          elevation: Theme.of(context).appBarTheme.elevation,
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.56, vertical: 11),
            child: Column(
              children: [
                CustomSearchBar(
                  textEditingController: textEditingController,
                  imagePath: kSearchIcon,
                  title: 'Search',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 11),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Recently accessed',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(
                  height: 143.23,
                  width: 294.1,
                  child: PageView(
                    controller: pageController,
                    children: [
                      SlideShow(
                        imagePath: kCourseImage1,
                        text: 'it 324 - human computer interaction',
                        route: CoursePage.routeName,
                      ),
                      SlideShow(
                        imagePath: kCourseImage2,
                        text:
                            'IT 306 - software reliability and quality assurance',
                        route: CoursePage.routeName,
                      ),
                      SlideShow(
                        imagePath: kCourseImage3,
                        text: 'it 302 - advanced visual basic .net programming',
                        route: CoursePage.routeName,
                      ),
                      SlideShow(
                        imagePath: kCourseImage4,
                        text: 'it 344 - open sources operating systems',
                        route: CoursePage.routeName,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.4, bottom: 11.78),
                  child: CustomPageIndicator(controller: pageController),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All courses',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SeeMore.routeName);
                      },
                      child: Text(
                        'See all',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: color5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        VerticalCarousel(
                            imagePath: kCourseImage1,
                            text: 'it 324 - human computer interaction',
                            route: CoursePage.routeName),
                        VerticalCarousel(
                            imagePath: kCourseImage2,
                            text:
                                'it 306 - software reliability and quality assurance',
                            route: CoursePage.routeName),
                        VerticalCarousel(
                            imagePath: kCourseImage3,
                            text:
                                'it 302 - advanced visual basic .net programming',
                            route: CoursePage.routeName),
                        VerticalCarousel(
                            imagePath: kCourseImage4,
                            text: 'it 344 - open sources operating systems',
                            route: CoursePage.routeName),
                        VerticalCarousel(
                            imagePath: kCourseImage5,
                            text: 'tutorial for students',
                            route: CoursePage.routeName),
                        VerticalCarousel(
                            imagePath: kCourseImage6,
                            text: 'it 308 - advanced java technologies',
                            route: CoursePage.routeName),
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
              print('THSI IS THE INDEX VALUE: $index');
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
      ),
    );
  }
}
