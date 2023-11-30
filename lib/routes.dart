import 'package:flutter/material.dart';
import 'package:studyssey/screens/GetAssistance/getassistance.dart';
import 'package:studyssey/screens/courses/course_content_page.dart';
import 'package:studyssey/screens/courses/see_more.dart';
import 'package:studyssey/screens/gctu_news/NewsGCTU.dart';
import 'package:studyssey/screens/pay_fees/pay_fees.dart';
import 'package:studyssey/screens/print_registration_page.dart';
import 'package:studyssey/screens/resetpage/change_password.dart';
import 'package:studyssey/screens/courses/course_page.dart';
import 'package:studyssey/screens/homepage/home_page.dart';
import 'package:studyssey/screens/login_page.dart';
import 'package:studyssey/screens/notification_page.dart';
import 'package:studyssey/screens/onboarding/onboarding_page.dart';
import 'package:studyssey/screens/resetpage/reset_page.dart';
import 'package:studyssey/screens/sip/sip.dart';

Map<String, WidgetBuilder> routes = {
  OnboardingPage.routeName: (context) => const OnboardingPage(),
  LoginPage.routeName: (context) => const LoginPage(),
  HomePage.routeName: (context) => const HomePage(),
  ResetPage.routeName: (context) => const ResetPage(),
  ChangePassword.routeName: (context) => const ChangePassword(),
  NotificationPage.routeName: (context) => const NotificationPage(),
  CoursePage.routeName: (context) => const CoursePage(),
  SeeMore.routeName: (context) => const SeeMore(),
  SIPortal.routeName: (context) => const SIPortal(),
  NewsGCTU.routeName: (context) => const NewsGCTU(),
  PayFees.routeName: (context) => const PayFees(),
  PrintRegistrationPage.routeName: (context) => const PrintRegistrationPage(),
  CourseContent.routeName: (context) => const CourseContent(),
  GetAssistance.routeName: (context) => const GetAssistance(),
};
