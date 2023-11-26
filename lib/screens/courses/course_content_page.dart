import 'package:flutter/material.dart';

class CourseContentPage extends StatefulWidget {
  const CourseContentPage({super.key});

  static String routeName = 'CourseContentPage';

  @override
  State<CourseContentPage> createState() => _CourseContentPageState();
}

class _CourseContentPageState extends State<CourseContentPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      color: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
