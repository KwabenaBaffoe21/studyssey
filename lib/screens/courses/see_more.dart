import 'package:flutter/material.dart';
import 'package:studyssey/components/customsearchbar.dart';
import 'package:studyssey/components/vertical_carousel.dart';
import 'package:studyssey/constant.dart';
import '../../components/custombackbutton.dart';
import 'course_page.dart';

class SeeMore extends StatefulWidget {
  const SeeMore({super.key});

  static String routeName = 'SeeMore';

  @override
  State<SeeMore> createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 16),
          child: Text('All Courses'),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
        toolbarHeight: Theme.of(context).appBarTheme.toolbarHeight,
        elevation: Theme.of(context).appBarTheme.elevation,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25.56, vertical: 11),
          child: Column(
            children: [
              CustomSearchBar(
                  textEditingController: textEditingController,
                  imagePath: kSearchIcon,
                  title: 'Search'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 33.22),
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
                        text: 'it 302 - advanced visual basic .net programming',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
